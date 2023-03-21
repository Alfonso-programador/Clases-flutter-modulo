import 'package:flutter/material.dart';

class Imagenes extends StatelessWidget {
  const Imagenes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          "https://rotulosmatesanz.com/wp-content/uploads/2017/09/2000px-Google_G_Logo.svg_.png",
          height: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/netflix.png",
          height: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        const Icon(
          Icons.facebook_rounded,
          color: Colors.blue,
          size: 100,
        )
      ],
    );
  }
}
