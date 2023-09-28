import 'package:clone/card1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
final Uri webLink = Uri.parse('https://www.jayanathanchits.com/');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              const Image(image: AssetImage('assets/img/logo.jpg')),
              GestureDetector(
                onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                title: Image.asset('assets/img/logoPop.png'),
                actions: [
                  Card(
                    elevation: 15,
                    child: const Text("check",style: TextStyle(fontSize: 35),),
                  ),
                  TextButton(onPressed: (){
                       Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return CardOneImage();
                },
              ),
            );
                  }, child: Text("Yes"))
                ],
              );
              },
            );
                },
              child:const Image(
                width: 350,
                image: AssetImage('assets/img/card1.jpeg')),
            ),
            GestureDetector(
              child:const Image(
                width: 350,
                image: AssetImage('assets/img/card2.jpeg')),
            ),
            Align(
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
                backgroundColor: Colors.white,
                child: Image.asset('assets/img/youtube.png')),
            ),
            // IconButton(onPressed: () {
              
            // }, icon:const Icon(FontAwesomeIcons.youtube,color: Colors.red,)),
            const SizedBox(
              width: 45,            ),IconButton(onPressed: () {
              
            }, icon:const Icon(Icons.phone_in_talk,
            color: Colors.blue,)),
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
            ],
          ),
        ),
      ),
    );
  }
}