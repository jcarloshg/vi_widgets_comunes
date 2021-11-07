// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:vi_basics/pages/Home.dart';

class PopupMenuButtonwidget extends StatelessWidget implements PreferredSizeWidget{
  const PopupMenuButtonwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade100,
      height: 75.0,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<TodoMenuItem>(
          icon: const Icon(Icons.view_list),
          onSelected: ((valueSelected) {
            print('vlaueSelected: ${valueSelected.title}');
          }),
          itemBuilder: (BuildContext context) {
            return foodMenuList.map((TodoMenuItem todoMenuItem) {
              return PopupMenuItem<TodoMenuItem>(
                  value: todoMenuItem,
                  child: Row(
                    children: <Widget>[
                      Icon(todoMenuItem.icon.icon),
                      const Padding(padding: EdgeInsets.all(8.0)),
                      Text(todoMenuItem.title)
                    ],
                  ));
            }).toList();
          },
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(75.0);
}
