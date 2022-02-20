import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
   home: Scaffold(

     appBar: AppBar(
       title: Text('I am Poor'),
       backgroundColor: Colors.black,
     ),
     body: Center(
       child: Image(image: AssetImage('images/home_page_image.jpg')),
     ),
   )
  ),
  );
}