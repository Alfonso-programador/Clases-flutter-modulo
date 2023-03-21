import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  const Textos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "hola",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          "Soy un subtitulo",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
    
  }
}
