import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: new CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
            ),
            accountName: Text("Shaima"),
            accountEmail: Text("Shaima@gmail.com"),
            decoration: BoxDecoration(color: Colors.green),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(
              Icons.home,
              color: Colors.green,
            ),
            subtitle: Text("this is home page"),
            isThreeLine: true,
            dense: true,
            onTap: () => {Navigator.pushNamed(context, '/')},
            onLongPress: () => {print("you long pressed")},
          ),
          ListTile(
            title: Text("Contact"),
            leading: Icon(
              Icons.phone,
              color: Colors.green,
            ),
            subtitle: Text("this is contact page"),
            isThreeLine: true,
            dense: true,
            onTap: () => {Navigator.pushNamed(context, '/contact')},
            onLongPress: () => {print("you long pressed")},
          ),
        ],
      ),
    );
  }
}
