import 'package:flutter/material.dart';
import '../components/MyDrawer.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Vegetables'),
          backgroundColor: Colors.green,
          actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        ),
        drawer: MyDrawer(),
        body: Text("This is contact"),
      ),
    );
  }
}
