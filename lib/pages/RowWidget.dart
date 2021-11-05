
// RowWidget.dart

// ignore_for_file: file_names
// ignore: unnecessary_import
import 'dart:ui';

import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget{
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: const <Widget>[
            Text('Row 1'),
            Padding(padding: EdgeInsets.all(16.0)),
            Text('Row 2'),
            Padding(padding: EdgeInsets.all(16.0)),
            Text('Row 3'),
          ],
        )
      ],
    );
  }

}