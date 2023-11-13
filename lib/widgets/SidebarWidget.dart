import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(38, 38, 38, 0),
            ),
            child: Text(
              'Sidebar Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Icon(CupertinoIcons.home, color: Colors.black)
          ),
          ListTile(
              title: Icon(CupertinoIcons.search)
          ),
          ListTile(
              title: Icon(CupertinoIcons.list_bullet_indent)
          ),
          ListTile(
              title: Icon(CupertinoIcons.add)
          ),
          ListTile(
              title: Icon(CupertinoIcons.chart_bar_alt_fill)
          ),
          ListTile(
              title: Icon(CupertinoIcons.calendar)
          ),
        ],
      ),
    );
  }
}