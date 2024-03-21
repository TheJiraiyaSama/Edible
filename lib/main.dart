import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff99A78E),
        body: Container(
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
                  fontSize: 40, fontFamily: 'Sans-Serif', color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}
