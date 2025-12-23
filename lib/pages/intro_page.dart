import 'package:flutter/material.dart';
import 'home_page.dart';

// introduction page of our app

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Padding widget is used to add padding around its child widget
        // Padding is the space between the content of a widget and its outer boundaries
        // we use it to create space or margins around a widget, making the layout more visually appealing

        // logo
        Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80.0, bottom: 40, top: 160),
            child: Image.asset('lib/images/avocado.png')),

        // we deliver groceries at your doorstep
        const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text("We deliver groceries at your doorstep",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ))),

        // SizedBox widget is used to create a box with a specified width, height, or both
        // it provides a simple way to size and space widgets

        const SizedBox(height: 24),

        //fresh items everyday
        Text("Fresh items everyday",
            style: TextStyle(color: Colors.grey.shade600, fontSize: 18)),

        const SizedBox(height: 24),

        // GestureDetector widget is used to recognize and handle gestures, such as taps, drags, and long presses
        // it wraps around another widget and provides callbacks for different types of gestures

        // get started bottom
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          )),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade400,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ],
    ));
  }
}
