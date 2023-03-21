// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Textos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        titleMedium: TextStyle(
          color: Colors.pink,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      )),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text("Mi primea app en Flutter"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 10.0,
          backgroundColor: Colors.pink.shade400,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.pink,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
            ]),
        backgroundColor: Colors.red.shade100,
        body: Center(child: Textos()),
      ),
    );
  }
}
