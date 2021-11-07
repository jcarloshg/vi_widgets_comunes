
// ignore_for_file: file_names
import 'package:flutter/material.dart';

class TypesButtons extends StatelessWidget {
   const TypesButtons
({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Column(
       children: <Widget>[
         IconButton(
                    onPressed: () {
                      print("hola nariz de bola");
                    },
                    icon: const Icon(Icons.flight)
                  ),
                  IconButton(
                    onPressed: () {
                      print("hola nariz de bola");
                    },
                    icon: const Icon(Icons.flight),
                    iconSize: 42.0,
                    color: Colors.white,
                    tooltip: 'Flight',
                    ),
       ],
     );
   }
 }