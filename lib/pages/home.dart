import 'dart:convert';

import 'package:flutter/material.dart';
import '../components/MyDrawer.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void getData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body);
    print(responseBody);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

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
        body: ListView(
          children: [
            Container(
              height: 800,
              margin: EdgeInsets.all(10),
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  GridTile(
                    child: Image.asset('assets/img/1.jpg'),
                  ),
                  GridTile(
                    child: Image.asset('assets/img/2.jpg'),
                  ),
                  GridTile(
                    child: Image.asset('assets/img/3.jpg'),
                  ),
                  GridTile(
                    child: Image.asset('assets/img/4.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
