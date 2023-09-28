import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  final Uri webLink = Uri.parse('https://www.jayanathanchits.com/');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Row(          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(padding: EdgeInsets.only(bottom: 130,left: 15)),
            IconButton(onPressed: () {
              launchUrl(webLink);
            }, icon:const Icon(Icons.language),
            iconSize: 32),
            GestureDetector(
              onTap: () {
                
              },
              child: CircleAvatar(
                radius: 12,
                child: Image.asset('assets/img/instagram.png')),
            ),
            // IconButton(onPressed: () {
              
            // }, icon:const Icon(FontAwesomeIcons.instagram)),
            IconButton(onPressed: () {
              
            }, icon:const Icon(FontAwesomeIcons.facebookSquare,color: Color.fromARGB(255, 37, 90, 134),)),
            GestureDetector(
              onTap: () {
                
              },
              child: CircleAvatar(
                // radius: 28,
                child: Image.asset('assets/img/youtube.png')),
            ),
            // IconButton(onPressed: () {
              
            // }, icon:const Icon(FontAwesomeIcons.youtube,color: Colors.red,)),
            const SizedBox(
              width: 45,
            ),IconButton(onPressed: () {
              
            }, icon:const Icon(Icons.phone_in_talk)),
            GestureDetector(
              onTap: () {
                
              },
              child: CircleAvatar(
                radius: 15,
                child: Image.asset('assets/img/whatsapp.png')),
            ),
            // IconButton(onPressed: () {
              
            // }, icon:const Icon(FontAwesomeIcons.whatsapp,color: Colors.green,)),
            IconButton(onPressed: () {
              
            }, icon:const Icon(Icons.location_on,
            color: Colors.red,)),
          ],
        ),
      ),
    );
  }
}