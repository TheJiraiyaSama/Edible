import 'package:flutter/material.dart';
import 'package:edible/CButton.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff99A78E),
        body: CButton(),
      ),
    ),
  );
}

class Basic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff99B79E),
            Color(0xff99B87E),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          "Welcome To EcoBytes",
          style: TextStyle(
              fontSize: 28, fontFamily: 'Hanken Grotesk', color: Colors.black),
        ),
      ),
    );
  }
}
