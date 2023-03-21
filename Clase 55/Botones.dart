// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        //ElevateButton
        SizedBox(
          width: 150,
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              print("Soy un ElevatedButton");
            },
            child: Text("ElevatedButton"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 6.0),
          ),
        ),

        //Espacio
        SizedBox(
          height: 20,
        ),

        TextButton(
            onPressed: () {
              print("Soy un TextButton");
            },
            child: Text(
              "TextButton",
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 25),
            )),

        SizedBox(
          height: 20,
        ),

        IconButton(
            onPressed: () {
              print("Soy un IconButton");
            },
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).primaryColor,
            )),

        SizedBox(
          height: 20,
        ),

        OutlinedButton(
          onPressed: () {
            print("Soy un OutlineButton");
          },
          child: Text(
            "OutlineButton",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          style: OutlinedButton.styleFrom(
              side:
                  BorderSide(width: 3, color: Theme.of(context).primaryColor)),
        ),

        SizedBox(
          height: 20,
        ),

        FloatingActionButton(
          onPressed: () => print("Soy un FloatingActionButton"),
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.close),
        )
      ],
    );
  }
}
