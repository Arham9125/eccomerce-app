import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/widgets/card.dart';
import 'package:project/home.dart';
import 'package:project/widgets/textwidget.dart';

class Screen3 extends StatelessWidget {
  final list = [
    // Image.asset("assets/images/1f.png"),
    // Image.asset("assets/images/2f.png"),
    // Image.asset("assets/images/3f.png"),
    // Image.asset("assets/images/4f.png"),

    ("assets/images/g1.png"),
    ("assets/images/g2.png"),
    ("assets/images/g3.png"),
    ("assets/images/g4.png"),
    ("assets/images/1f.png"),
    ("assets/images/2f.png"),
    ("assets/images/3f.png"),
    ("assets/images/4f.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        //word//
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
          child: Price(text: """Your Favorite Collections """),
        ),
      ),
      Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.grey.shade200,
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) => SingleChildScrollView(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Cardd(img: list[index]),
                      Icon(
                        FontAwesomeIcons.heartCircleCheck,
                        color: Colors.red,
                      )
                    ],
                  )))),
    ]);
  }
}
