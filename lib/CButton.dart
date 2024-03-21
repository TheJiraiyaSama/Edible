import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  const CButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.all(25.0),
          ),
        ),
        child: const Text(
          "Get Started",
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Hanken Grotesk',
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
