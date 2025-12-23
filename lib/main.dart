import 'package:flutter/material.dart';
import 'model/cart_model.dart';
import 'pages/intro_page.dart';
import 'package:provider/provider.dart';

// we use provider package for state management.
// it follows the provider pattern and allows widgets to listen to changes in the state and automatically rebuild when the state changes.
// you need to add provider and it's current version in pubspec.yaml, after that you need to click button get packages, and than you can import it in files where you need it

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// ChangeNotifierProvider is part of the provider package and is used to provide a model to its descendants
// create parameter is a callback that creates an instance of the CartModel class
// CartModel is a class that extends ChangeNotifier and it holds the state that needs to be shared with other widgets.
// ChangeNotifierProvider is specifically designed for use with classes that extend ChangeNotifier
// when the state inside the CartModel changes, any widgets that depend on it will automatically rebuild to reflect the updated state.

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),

      // child parameter of ChangeNotifierProvider is a MaterialApp widget
      // home property is set to an instance of IntroPage, initial screen of the application.

      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
