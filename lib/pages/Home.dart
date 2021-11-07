// by Jose Carlos Huerta Garcia
// home.dart

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:vi_basics/pages/ContainerWithBoxDecorationWidget.dart';
import 'package:vi_basics/pages/RowWidget.dart';
import 'package:vi_basics/pages/TypesButtons.dart';

import 'ColumnWidget.dart';
import 'PopupMenuButtonwidget.dart';

class TodoMenuItem {
  final String title;
  final Icon icon;
  TodoMenuItem({required this.title, required this.icon});
}

List<TodoMenuItem> foodMenuList = [
  TodoMenuItem(title: 'Fast Food', icon: const Icon(Icons.fastfood)),
  TodoMenuItem(title: 'Remind me', icon: const Icon(Icons.add_alert)),
  TodoMenuItem(title: 'Flight', icon: const Icon(Icons.flight)),
  TodoMenuItem(title: 'Music', icon: const Icon(Icons.audiotrack)),
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home in practices VI'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        flexibleSpace: const SafeArea(
          child: Icon(
            Icons.phone_callback,
            size: 75.0,
            color: Colors.white70,
          ),
        ),
        bottom: const PopupMenuButtonwidget(),
        // PreferredSize(
        //   preferredSize: const Size.fromHeight(75.0),
        //   child: Container(
        //     color: Colors.lightGreen,
        //     height: 75,
        //     width: double.infinity,
        //     child: const Center(child: Text('Bottom')),
        //   ),
        //),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: const <Widget>[
                  Divider(),
                  ContainerWithBoxDecorationWidget(),
                  Divider(),
                  ColumnWidget(),
                  Divider(),
                  RowWidget(),
                  Divider(),
                  TypesButtons(),
                  Divider(),
                  // ButtonsBarWidget()
                ],
              ),
            ),
          ),
        ),
      ),
      // backgroundColor: Colors.amberAccent,
    );
  }
}
