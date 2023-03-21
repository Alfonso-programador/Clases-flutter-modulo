// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(height: 20,),

          Center(
            child: SizedBox(
              width: 350,
              child: TextFormField(
                controller: controller,
                validator: (value){
                      if(value!.isEmpty){
                          return "Por favor no deje vacio este input";
                      }
                },
                style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.normal
                ),
                cursorColor: Colors.pink,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.message,color: Colors.pink,),
                  hintText: "Envie su mensaje",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink
                    ),
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Center(
            child: SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  elevation: 6
                ),
                onPressed: (){
                  if(_formkey.currentState!.validate()){
                    print(controller.text);
                    print("Enviado");
                  }else{
                    print("El formulario no esta completo");
                  }
                }, 
                child: Text("Enviar")),
            ),
          )
        ]
      ,));
  }
}