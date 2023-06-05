// import a package that provides widgets and tools for building Flutter apps
import 'package:flutter/material.dart';

// define a stateful widget class named DemoButtons
class DemoButtons extends StatefulWidget {
 // use a named parameter to initialize the key property of the superclass
 const DemoButtons({super.key});

 // override the createState method to return an instance of _DemoButtonsState
 @override
 State<DemoButtons> createState() {
  return _DemoButtonsState();
 }
}

// define a state class named _DemoButtonsState that extends the state of DemoButtons
class _DemoButtonsState extends State<DemoButtons> {
 // declare a boolean variable named _isUnderstood and initialize it to false
 var _isUnderstood = false;

 // override the build method to return a widget tree
 @override
 Widget build(BuildContext context) {
  // print a message to the console for debugging purposes
  print('DemoButtons BUILD called');
  // return a Column widget that arranges its children vertically
  return Column(
   // set the mainAxisSize property to min to shrink the column to fit its children
   mainAxisSize: MainAxisSize.min,
   // set the children property to a list of widgets
   children: [
    // add a Row widget that arranges its children horizontally
    Row(
     // set the mainAxisAlignment property to center to align the children at the center of the row
     mainAxisAlignment: MainAxisAlignment.center,
     // set the children property to a list of widgets
     children: [
      // add a TextButton widget that displays some text and responds to taps
      TextButton(
       // set the onPressed property to a function that updates the state when the button is tapped
       onPressed: () {
        // call the setState method to notify Flutter that the state has changed and trigger a rebuild
        setState(() {
         // set the _isUnderstood variable to false
         _isUnderstood = false;
        });
       },
       // set the child property to a Text widget that displays 'No'
       child: const Text('No'),
      ),
      // add another TextButton widget that displays some text and responds to taps
      TextButton(
       // set the onPressed property to a function that updates the state when the button is tapped
       onPressed: () {
        // call the setState method to notify Flutter that the state has changed and trigger a rebuild
        setState(() {
         // set the _isUnderstood variable to true
         _isUnderstood = true;
        });
       },
       // set the child property to a Text widget that displays 'Yes'
       child: const Text('Yes'),
      ),
     ],
    ),
    // add an if statement that conditionally adds a Text widget if _isUnderstood is true
    if (_isUnderstood)
     // set the child property to a Text widget that displays 'Awesome!'
     const Text('Awesome!'),
   ],
  );
 }
}
