// import a package that provides widgets and tools for building Flutter apps
import 'package:flutter/material.dart';

// define an enum class named Priority that represents the priority of a todo item
enum Priority { urgent, normal, low }

// define a stateful widget class named CheckableTodoItem that displays a todo item with a checkbox and an icon
class CheckableTodoItem extends StatefulWidget {
 // use a const constructor to initialize the text and priority properties and the key property of the superclass
 const CheckableTodoItem(this.text, this.priority, {super.key});

 // declare a final string property named text that holds the todo text
 final String text;
 // declare a final Priority property named priority that holds the todo priority
 final Priority priority;

 // override the createState method to return an instance of _CheckableTodoItemState
 @override
 State<CheckableTodoItem> createState() => _CheckableTodoItemState();
}

// define a state class named _CheckableTodoItemState that extends the state of CheckableTodoItem
class _CheckableTodoItemState extends State<CheckableTodoItem> {
 // declare a boolean variable named _done and initialize it to false
 var _done = false;

 // define a method named _setDone that takes a boolean parameter named isChecked and updates the state when called
 void _setDone(bool? isChecked) {
  // call the setState method to notify Flutter that the state has changed and trigger a rebuild
  setState(() {
   // set the _done variable to isChecked or false if isChecked is null
   _done = isChecked ?? false;
  });
 }

 // override the build method to return a widget tree
 @override
 Widget build(BuildContext context) {
  // declare a variable named icon and initialize it to Icons.low_priority
  var icon = Icons.low_priority;

  // use an if statement to check if the widget's priority is urgent and set the icon accordingly
  if (widget.priority == Priority.urgent) {
   icon = Icons.notifications_active;
  }

  // use another if statement to check if the widget's priority is normal and set the icon accordingly
  if (widget.priority == Priority.normal) {
   icon = Icons.list;
  }

  // return a Padding widget that adds some space around its child
  return Padding(
   // set the padding property to an EdgeInsets object that defines the space in all directions
   padding: const EdgeInsets.all(8),
   // set the child property to a Row widget that arranges its children horizontally
   child: Row(
    // set the crossAxisAlignment property to center to align the children at the center of the row
    crossAxisAlignment: CrossAxisAlignment.center,
    // set the children property to a list of widgets
    children: [
     // add a Checkbox widget that displays a checkbox and responds to taps
     Checkbox(value: _done, onChanged: _setDone),
     // add a SizedBox widget that adds some horizontal space
     const SizedBox(width: 6),
     // add an Icon widget that displays an icon based on the icon variable
     Icon(icon),
     // add another SizedBox widget that adds some horizontal space
     const SizedBox(width: 12),
     // add a Text widget that displays the widget's text property
     Text(widget.text),
    ],
   ),
  );
 }
}
