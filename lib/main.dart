import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/contact.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/contact': (context) => Contact(),
    },
  ));
}
