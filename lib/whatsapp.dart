import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsappAlertDialog extends StatelessWidget {
  const WhatsappAlertDialog({Key? key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actions: [
        Container(
          width: 300, // Adjust the width as needed
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'WhatsApp Details',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Press on a number to initiate a WhatsApp chat:',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 10),
              buildWhatsAppRow('Trichy', '+919361000950'),
              buildWhatsAppRow('Karur', '+918610115093'),
              buildWhatsAppRow('Namakkal', '+917339557145'),
              buildWhatsAppRow('Madurai', '+918838336941'),
              buildWhatsAppRow('Salem', '+919600796598'),
              buildWhatsAppRow('Thanjavur', '+919943720930'),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 14.0),
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.green),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildWhatsAppRow(String location, String phoneNumber) {
    return GestureDetector(
      onTap: () {
        launch('whatsapp://send?phone=$phoneNumber&text=Hi');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            location,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                phoneNumber,
                style: TextStyle(fontSize: 14.0),
              ),
              Image(
                height: 15,
                image: AssetImage('assets/img/whatsapp.png'))
            ],
          ),
        ],
      ),
    );
  }
}
