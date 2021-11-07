// ColumnWidget.dart

// ignore_for_file: file_names
// ignore: unnecessary_import

import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        const Text('Column and Row Nesting 1'),
        const Text('Column and Row Nesting 2'),
        const Text('Column and Row Nesting 3'),
        const Text('Column and Row Nesting 4'),
        const Padding(
          padding: EdgeInsets.all(16),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Text('Row Nesting 1'),
            Text('Row Nesting 2'),
            Text('Row Nesting 3'),
          ],
        ),
        const Text('Column and Row Nesting 3'),
        const Text('Column and Row Nesting 4'),

        // Text('Column 1'),
        // Divider(),
        // Text('Column 2'),
        // Divider(),
        // Text('Column 3'),
      ],
    );
  }
}
