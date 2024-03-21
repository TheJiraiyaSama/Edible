import 'dart:math';
import 'package:flutter/material.dart';

class onBoard extends StatelessWidget {
  const onBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image at the top
        Container(
          alignment: Alignment.topCenter,
          child: Image.asset(
            'assets/images/demo.png',
            width: 500,
            height: 500,
          ),
        ),
        const SizedBox(height: 20), // Spacer

        // Text in the center
        const Text(
          'Just Snap and Unveil with EcoBytes',
          style: TextStyle(
            fontSize: 21,
            fontFamily: "Hanken Grotesk",
            color: Colors.black,
            decorationThickness: sqrt1_2,
          ),
        ),
        const SizedBox(height: 20), // Spacer

        // Button at the bottom
         Positioned(
          bottom: 200, // Adjust the distance from the bottom as needed
          left: 200,
          right: 200,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(25.0),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xffC0BFB4),
              ),
              minimumSize: MaterialStateProperty.all<Size>(
                Size(double.infinity, 50), // Adjust the height as needed
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      30.0), // Adjust the border radius as needed
                ),
              ),
            ),
            child: const Text(
              "Continue",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Hanken Grotesk',
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
