// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prueba/Imagenes.dart';
import 'package:prueba/Navegacion.dart';
import 'Textos.dart';
import 'Botones.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final screens = [Textos(),Botones(),Imagenes(),Navegacion()];
  int selectedIndex = 0;
  void onItemTapped(int index){
      setState((){
        selectedIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.purple,
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
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.pink,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Textos"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.radio_button_checked), label: "Botones"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.image), label: "Imagenes"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.route), label: "Navegacion"),
            ],
            
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            
            ),
        backgroundColor: Colors.red.shade100,
        body: Center(child: screens[selectedIndex]),
      ),
    );
  }
}
