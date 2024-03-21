import 'dart:math';
import 'package:flutter/material.dart';
import 'package:edible/onBoard.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff99A78E),
        body: Basic("Get Started!"),
      ),
    ),
  );
}

class Basic extends StatelessWidget {
  const Basic(this.text, {Key? key}) : super(key: key);
  final String text;

  void onBoarding(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              NewPage()), // Replace NewPage() with the page you want to navigate to
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image at the top center
        Container(
          alignment: Alignment.topCenter,
          child: Image.asset(
            'assets/images/logo.jpg', 
            width: 500, // Adjust image width as needed
            height: 500, // Adjust image height as needed
          ),
        ),
        const SizedBox(height: 10), // Spacer

        // Two texts in the center
        const Column(
          children: [
            Text(
              'Welcome To Ecobytes!',
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Hanken Grotesk",
                color: Colors.black,
                decorationThickness: sqrt1_2,
              ),
            ),
            Text(
              "Unlocking Nature's Code One Byte at a Time",
              style: TextStyle(fontSize: 14, fontFamily: "Hanken Grotesk"),
            ),
          ],
        ),
        const SizedBox(height: 50), // Spacer

        // TextButton at the bottom
        Positioned(
          bottom: 200, // Adjust the distance from the bottom as needed
          left: 200,
          right: 200,
          child: ElevatedButton(
            onPressed: () => onBoarding(context),
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
            child: Text(
              text,
              style: const TextStyle(
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

// Example page to navigate to
class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff99A78E),
      appBar: AppBar(
        title: Text('Ecobytes'),
        backgroundColor: Color(0xff99A78E),
      ),
      body: const onBoard(),
    );
  }
}
