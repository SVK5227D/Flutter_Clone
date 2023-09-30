// ignore_for_file: deprecated_member_use

import 'package:clone/card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialApp(
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
final Uri instLink = Uri.parse('https://instagram.com/sreejayanathanchits?igshid=MWZjMTM2ODFkZg==');
final Uri facebookLink = Uri.parse('https://m.facebook.com/SjChits');
final Uri youtubeLink =Uri.parse('https://youtube.com/@sreejayanathanchits6684?si=R6RLsoKlhSYesqQa');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 12,
              ),
              const Image(image: AssetImage('assets/img/logo.jpg')),
              const SizedBox(
                height: 12,
              ),

              // Cards

              GestureDetector(
                onTap: () {
                  cardPopUp1();
                },
              child:const Image(
                width: 350,
                image: AssetImage('assets/img/card1.jpeg')),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () => cardPopUp2(),
              child:const Image(
                width: 350,
                image: AssetImage('assets/img/card2.jpeg')),
            ),
            const SizedBox(
              height: 200,
            ),

            // bottom Social media Icon and popup

            Row(          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Padding(padding: EdgeInsets.only(bottom: 130,left: 15)),
            IconButton(onPressed: () {
              launchUrl(webLink);
            }, icon:const Icon(Icons.language),
            iconSize: 40,
            color: Colors.black,
            ),
            GestureDetector(
              onTap: () {
                launchUrl(instLink);
              },
              child:const Image(
                height: 32,
                image:AssetImage('assets/img/instagram.png'))
            ),
            IconButton(onPressed: () {
              launchUrl(facebookLink);
            }, icon:const Icon(FontAwesomeIcons.facebookSquare,color: Color.fromARGB(255, 37, 90, 134),size: 35,)),
            GestureDetector(
              onTap: () {
                launchUrl(youtubeLink);
              },
              child:const Image(
                height: 35,
                image: AssetImage('assets/img/youtube.png'))
            ),
            const SizedBox(
              width: 45,            ),IconButton(onPressed: () => callPopup(), icon:const Icon(Icons.phone_in_talk,
            size: 35,
            color: Colors.blue,)),
            GestureDetector(
              onTap: () => whatsappPop(),
              child:const Image(
                height: 32,
                image:AssetImage('assets/img/whatsapp.png'))
            ),
            IconButton(onPressed: () => locationPopup(), icon:const Icon(Icons.location_on,
            size: 38,
            color: Colors.red,)),
          ],
            ) ,],
          ),
        ),
      ),
    );
  }

  Future cardPopUp1(){
    return showDialog(
              context: context,
              builder: (context) {

                return AlertDialog(
                  title: Container(
                          alignment: Alignment.topCenter,
                          child:const  Image(
                              height: 150,
                              image: AssetImage('assets/img/logoPop.png')),
                        ),
                actions: [
                  Container(
                    width: 400,
                    height: 180,
                    child: Column(
                      children: [
                         
                        const Center(
                          child: Text("Announcement",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                        const Center(
                          child: Text("New scheme Started on December",style: TextStyle(fontSize: 16),),
                        ),const Center(
                          child: Text("2021",),
                        ),
                        const SizedBox(
                          height: 10,
                        ), Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Close',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).pop();
                                },),
                              ),
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Yes',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return CardOneImage();
                },
              ),
            );
                                  
                                },),
                              ),
                            ],
                          ),
                        
                      ],
                    ),
                  )
                ],
              );
              },
            );
  }

  Future cardPopUp2(){
    return showDialog(
              context: context,
              builder: (context) {

                return AlertDialog(
                  title: Container(
                          alignment: Alignment.topCenter,
                          child:const  Image(
                              height: 150,
                              image: AssetImage('assets/img/logoPop.png')),
                        ),
                actions: [
                  Container(
                    width: 350,
                    height: 160,
                    child: Column(
                      children: [
                         
                        const Center(
                          child: Text("Announcement",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Center(
                          child: Text("New scheme Started on December",style: TextStyle(fontSize: 16),),
                        ),const Center(
                          child: Text("2021",),
                        ),
                        const SizedBox(
                          height: 10,
                        ), Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Close',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).pop();
                                },),
                              ),
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Yes',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return CardOneImage();
                },
              ),
            );
                                  
                                },),
                              ),
                            ],
                          ),
                        
                      ],
                    ),
                  )
                ],
              );
              },
            );
  }

  Future whatsappPop(){
    return showDialog(
              context: context,
              builder: (context) {

                return AlertDialog(
                  title: Container(
                          alignment: Alignment.topCenter,
                          child:const  Image(
                              height: 150,
                              image: AssetImage('assets/img/logoPop.png')),
                        ),
                actions: [
                  Container(
                    width: 350,
                    height: 160,
                    child: Column(
                      children: [
                         
                        const Center(
                          child: Text("Announcement",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Center(
                          child: Text("New scheme Started on December",style: TextStyle(fontSize: 16),),
                        ),const Center(
                          child: Text("2021",),
                        ),
                        const SizedBox(
                          height: 10,
                        ), Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Close',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).pop();
                                },),
                              ),
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Yes',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return CardOneImage();
                },
              ),
            );
                                  
                                },),
                              ),
                            ],
                          ),
                        
                      ],
                    ),
                  )
                ],
              );
              },
            );
  }

  Future locationPopup(){
    return showDialog(
              context: context,
              builder: (context) {

                return AlertDialog(
                  title: Container(
                          alignment: Alignment.topCenter,
                          child:const  Image(
                              height: 150,
                              image: AssetImage('assets/img/logoPop.png')),
                        ),
                actions: [
                  Container(
                    width: 350,
                    height: 160,
                    child: Column(
                      children: [
                         
                        const Center(
                          child: Text("Announcement",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Center(
                          child: Text("New scheme Started on December",style: TextStyle(fontSize: 16),),
                        ),const Center(
                          child: Text("2021",),
                        ),
                        const SizedBox(
                          height: 10,
                        ), Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Close',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).pop();
                                },),
                              ),
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Yes',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return CardOneImage();
                },
              ),
            );
                                  
                                },),
                              ),
                            ],
                          ),
                        
                      ],
                    ),
                  )
                ],
              );
              },
            );
  }

  Future callPopup(){
    return showDialog(
              context: context,
              builder: (context) {

                return AlertDialog(
                  title: Container(
                          alignment: Alignment.topCenter,
                          child:const  Image(
                              height: 150,
                              image: AssetImage('assets/img/logoPop.png')),
                        ),
                actions: [
                  Container(
                    width: 350,
                    height: 160,
                    child: Column(
                      children: [
                         
                        const Center(
                          child: Text("Announcement",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Center(
                          child: Text("New scheme Started on December",style: TextStyle(fontSize: 16),),
                        ),const Center(
                          child: Text("2021",),
                        ),
                        const SizedBox(
                          height: 10,
                        ), Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Close',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).pop();
                                },),
                              ),
                              Container(
                                padding:const EdgeInsets.only(right: 15),
                                child: TextButton(child:const Text('Yes',style: TextStyle(fontSize: 18,color: Colors.black87),) ,onPressed: () {
                                  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return CardOneImage();
                },
              ),
            );
                                  
                                },),
                              ),
                            ],
                          ),
                        
                      ],
                    ),
                  )
                ],
              );
              },
            );
  }

}