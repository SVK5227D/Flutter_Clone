import 'package:flutter/material.dart';

class CardOneImage extends StatefulWidget {
   CardOneImage({super.key});

  @override
  State<CardOneImage> createState() => _CardOneImageState();
}

class _CardOneImageState extends State<CardOneImage> {
  List imageList = [
    Image.asset('assets/img/1.jpeg'),
    Image.asset('assets/img/2.jpeg'),
    Image.asset('assets/img/3.jpeg'),
    Image.asset('assets/img/4.jpeg'),
    Image.asset('assets/img/5.jpeg'),
    Image.asset('assets/img/6.jpeg'),
    Image.asset('assets/img/7.jpeg'),
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
                  itemCount: imageList.length,
                  controller: PageController(initialPage: currentIndex),
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Center(
                      child: imageList[index],
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