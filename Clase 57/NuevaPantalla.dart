// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NuevaPantalla extends StatelessWidget {
  const NuevaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nueva pantalla"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Center(child: Text("Una pantalla totalmente Diferente")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, elevation: 6),
            child: const Text("Cambiar de pantalla"),
          )
        ],
      ),
    );
  }
}
