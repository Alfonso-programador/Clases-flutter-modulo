import 'package:flutter/material.dart';
import 'package:prueba/NuevaPantalla.dart';

class Navegacion extends StatelessWidget {
  const Navegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 200,
          height: 70,
          child:
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => NuevaPantalla() )
                  );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 6
              ), 
              child: const Text("Cambiar pantalla"),
              ),
        )
      ],
    );
  }
}
