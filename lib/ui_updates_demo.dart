// import a package that provides widgets and tools for building Flutter apps
import 'package:flutter/material.dart';
// import a custom package that defines a stateful widget class named DemoButtons
import 'package:flutter_internals/demo_buttons.dart';

// define a stateless widget class named UIUpdatesDemo
class UIUpdatesDemo extends StatelessWidget {
 // use a named parameter to initialize the key property of the superclass
 const UIUpdatesDemo({super.key});

 // override the build method to return a widget tree
 @override
 Widget build(BuildContext context) {
  // print a message to the console for debugging purposes
  print('UIUpdatesDemo BUILD called');
  // return a Padding widget that adds some space around its child
  return Padding(
   // set the padding property to an EdgeInsets object that defines the space in all directions
   padding: const EdgeInsets.all(8.0),
   // set the child property to a Center widget that centers its child
   child: Center(
    // set the child property to a Column widget that arranges its children vertically
    child: Column(
     // set the mainAxisSize property to min to shrink the column to fit its children
     mainAxisSize: MainAxisSize.min,
     // set the crossAxisAlignment property to center to align the children at the center of the column
     crossAxisAlignment: CrossAxisAlignment.center,
     // set the children property to a list of widgets
     children: const [
      // add a Text widget that displays some text with bold style
      Text(
       'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
       textAlign: TextAlign.center,
       style: TextStyle(fontWeight: FontWeight.bold),
      ),
      // add a SizedBox widget that adds some vertical space
      SizedBox(height: 16),
      // add another Text widget that displays some text
      Text(
       'Do you understand how Flutter updates UIs?',
       textAlign: TextAlign.center,
      ),
      // add another SizedBox widget that adds some vertical space
      SizedBox(height: 24),
      // add a DemoButtons widget that displays some buttons and responds to taps
      DemoButtons(),
     ],
    ),
   ),
  );
 }
}
