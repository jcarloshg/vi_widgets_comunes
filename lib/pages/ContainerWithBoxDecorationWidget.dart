// by Jose Carlos Huerta Garcia
// home.dart

// ignore_for_file: file_names

// ignore: unnecessary_import
import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(10),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightGreen,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ],
          ),
          child: Center(
            child: RichText(
                text: const TextSpan(
                  text: 'Flutter World',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.deepPurple,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.deepPurple,
                    decorationStyle: TextDecorationStyle.dotted,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'for',
                    ),
                    TextSpan(
                      text: ' Mobile',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ]
                )
            ),
          ),
        ),
      ],
    );
  }
}
