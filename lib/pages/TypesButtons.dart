// ignore_for_file: file_names
import 'package:flutter/material.dart';

class TypesButtons extends StatelessWidget {
  const TypesButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(16)),
            FlatButton(onPressed: () {}, child: const Text('que onda?')),
            const Padding(padding: EdgeInsets.all(16)),
            FlatButton(
              onPressed: () {},
              child: Text('que onda?'),
              color: Colors.lightGreen,
              textColor: Colors.white,
            ),
          ],
        ),
        const Divider(),
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(16)),
            RaisedButton(
              onPressed: () {},
              child: const Icon(Icons.save),
              color: Colors.lightBlue,
            )
          ],
        )
      ],
    );
  }
}
