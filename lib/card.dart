import 'package:flutter/material.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            child: Image.asset('card1.jpeg'),
          ),
          GestureDetector(
            child: Image.asset('card2.jpeg'),
          ),
        ],
      ),
    );
  }
}