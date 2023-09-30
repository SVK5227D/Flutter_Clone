// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class CardOneImage extends StatefulWidget {
  CardOneImage({Key? key}) : super(key: key);

  @override
  _CardOneImageState createState() => _CardOneImageState();
}

class _CardOneImageState extends State<CardOneImage> {
  List<String> imagePaths = [
    'assets/img/1.jpeg',
    'assets/img/2.jpeg',
    'assets/img/3.jpeg',
    'assets/img/4.jpeg',
    'assets/img/5.jpeg',
    'assets/img/6.jpeg',
    'assets/img/7.jpeg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: imagePaths.length,
                controller: PageController(initialPage: currentIndex),
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  final assetImagePath = imagePaths[index];
                  final assetImage = AssetImage(assetImagePath);
                  return Center(
                    child: GestureDetector(
                      onLongPress: () async {
                        try {
                          // Load the asset image as bytes
                          final ByteData byteData =
                              await rootBundle.load(assetImagePath);
                          final List<int> bytes =
                              byteData.buffer.asUint8List();

                          // Create a temporary file to share
                          final tempDir = await getTemporaryDirectory();
                          final tempFile = File('${tempDir.path}/image.jpg');
                          await tempFile.writeAsBytes(bytes);

                          // Share the temporary file
                          await Share.shareFiles([tempFile.path], text: 'Sharing');
                        } catch (e) {
                          print('Error sharing file: $e');
                        }
                      },
                      child: Image(image: assetImage),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
