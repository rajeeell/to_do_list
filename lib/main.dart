// import a package that provides widgets and tools for building Flutter apps
import 'package:flutter/material.dart';

// import a custom package that defines some UI components for the app
// import 'package:flutter_internals/ui_updates_demo.dart';
// import another custom package that defines some keys for the app
import 'package:flutter_internals/keys/keys.dart';

// define the main function that runs the app
void main() {
  // call the runApp function and pass an instance of the App widget as an argument
  runApp(const App());
}

// define a stateless widget class named App
class App extends StatelessWidget {
  // use a named parameter to initialize the key property of the superclass
  const App({super.key});

  // override the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // return a MaterialApp widget that provides some basic app configuration
    return MaterialApp(
      // set the theme property to use Material 3 design system
      theme: ThemeData(useMaterial3: true),
      // set the home property to a Scaffold widget that provides a basic app layout
      home: Scaffold(
        // set the appBar property to an AppBar widget that displays a title bar
        appBar: AppBar(
          // set the title property to a Text widget that displays some text
          title: const Text('To Do List App'),
        ),
        // set the body property to a Keys widget that displays some content
        body: const Keys(),
      ),
    );
  }
}
