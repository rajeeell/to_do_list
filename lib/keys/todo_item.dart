// import a package that provides widgets and tools for building Flutter apps
import 'package:flutter/material.dart';

// define an enum class named Priority that represents the priority of a todo item
enum Priority { urgent, normal, low }

// define a stateless widget class named TodoItem that displays a todo item with an icon and some text
class TodoItem extends StatelessWidget {
 // use a const constructor to initialize the text and priority properties and the key property of the superclass
 const TodoItem(this.text, this.priority, {super.key});

 // declare a final string property named text that holds the todo text
 final String text;
 // declare a final Priority property named priority that holds the todo priority
 final Priority priority;

 // override the build method to return a widget tree
 @override
 Widget build(BuildContext context) {
  // declare a variable named icon and initialize it to Icons.low_priority
  var icon = Icons.low_priority;

  // use an if statement to check if the priority is urgent and set the icon accordingly
  if (priority == Priority.urgent) {
   icon = Icons.notifications_active;
  }

  // use another if statement to check if the priority is normal and set the icon accordingly
  if (priority == Priority.normal) {
   icon = Icons.list;
  }

  // return a Padding widget that adds some space around its child
  return Padding(
   // set the padding property to an EdgeInsets object that defines the space in all directions
   padding: const EdgeInsets.all(8),
   // set the child property to a Row widget that arranges its children horizontally
   child: Row(
    // set the children property to a list of widgets
    children: [
     // add an Icon widget that displays an icon based on the icon variable
     Icon(icon),
     // add a SizedBox widget that adds some horizontal space
     const SizedBox(width: 12),
     // add a Text widget that displays the text property
     Text(text),
    ],
   ),
  );
 }
}
