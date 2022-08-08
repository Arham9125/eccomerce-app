import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/screen1.dart';
import 'package:project/Screen2.dart';

import 'package:project/screen1.dart';
import 'package:project/screen3.dart';
import 'package:project/widgets/homewidget.dart';

import 'package:project/widgets/textwidget.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List tabs = [Screen1(),
   Screen2(),
    Screen1(), 
      Screen3(),
      ];

  var _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.grey.shade200,
          foregroundColor: Colors.grey.shade200,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade200,
          title: Container(
            height: 60,
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade300,
                filled: true,
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                suffixIcon: Icon(Icons.cancel_rounded),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/g1.png"),
              ),
            )
          ],
        ),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
            currentIndex: _currentindex,
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.grey.shade500,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: "Shopping"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Setting"),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            ]));
  }
}
