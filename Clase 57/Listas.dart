// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Listas extends StatelessWidget {
  const Listas({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 21,
      itemBuilder: (context, position) {
      return Card(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Yo soy el numero ${position.toString()}",
            style: TextStyle(fontSize: 22),
          ),
        ),
      );
    });
  }
}
