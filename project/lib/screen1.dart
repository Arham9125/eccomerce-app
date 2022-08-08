import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/cart.dart';
import 'package:project/main.dart';
import 'package:project/widgets/homewidget.dart';
import 'package:project/widgets/textwidget.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  List tasweer = [
    Image.asset("assets/images/g1.png"),
    Image.asset("assets/images/g2.png"),
    Image.asset("assets/images/g3.png"),
    Image.asset("assets/images/g4.png"),
    Image.asset("assets/images/g1.png"),
    Image.asset("assets/images/g2.png"),
    Image.asset("assets/images/g1.png"),
    Image.asset("assets/images/g2.png"),
    Image.asset("assets/images/g3.png"),
    Image.asset("assets/images/g4.png"),
    Image.asset("assets/images/g1.png"),
    Image.asset("assets/images/g2.png"),
  ];

  List circle = [
    ("assets/images/g1.png"),
    ("assets/images/g2.png"),
    ("assets/images/g3.png"),
    ("assets/images/g4.png"),
    ("assets/images/g1.png"),
    ("assets/images/g2.png"),
    ("assets/images/g1.png"),
    ("assets/images/g2.png"),
    ("assets/images/g3.png"),
    ("assets/images/g4.png"),
    ("assets/images/g2.png"),
    ("assets/images/g1.png"),
  ];

  //func//

  // mainn() {
  //   if (textt.isEven) {
  //     return Text("Ok");
  //     print("$textt true");
  //   } else {
  //     return Text("Bye");

  //     print("$textt false");
  //   }
  // }

  List data = [
    ("White strap plunge top"),
    ("Grey winter cardigan"),
    ("White strap plunge top"),
    ("Grey winter cardigan"),
    ("White strap plunge top"),
    ("Grey winter cardigan"),
    ("White strap plunge top"),
    ("Grey winter cardigan"),
    ("White strap plunge top"),
    ("Grey winter cardigan"),
    ("White strap plunge top"),
    ("Grey winter cardigan"),
  ];

  List names = [
    ("Sandy Williams"),
    ("Alero Samuel"),
    ("Sandy Williams"),
    ("Alero Samuel"),
    ("Sandy Williams"),
    ("Alero Samuel"),
    ("Sandy Williams"),
    ("Alero Samuel"),
    ("Sandy Williams"),
    ("Alero Samuel"),
    ("Sandy Williams"),
    ("Alero Samuel"),
  ];

  bool index = false;

  int textt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        resizeToAvoidBottomInset: false,
        //search bar complete//

        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.builder(
                itemCount: tasweer.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 150),
                itemBuilder: (context, index) => Wrap(children: [
                      GestureDetector(
                        onDoubleTap: () {
                          showModalBottomSheet(
                              context: context, builder: (context) => Cart());
                        },
                        child: FocusedMenuHolder(
                          onPressed: () {},
                          menuItems: [
                            FocusedMenuItem(
                                title: Text("Open"),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cart()));
                                }),
                            FocusedMenuItem(
                                title: Text("Share"),
                                onPressed: () {
                                  showBottomSheet(
                                      context: context,
                                      builder: (context) => Cart());
                                }),
                            FocusedMenuItem(
                                title: Text("Remove"), onPressed: () {}),
                          ],
                          child: Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              child: Column(
                                children: [
                                  Container(child: tasweer[index]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 0),
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: [
                            Container(
                                alignment: Alignment(-0.70, 0),
                                child: Row(
                                  children: [
                                    Price(text: "\$25.99"),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    index == 0
                                        ? Icon(
                                            FontAwesomeIcons.heart,
                                            color: Colors.red,
                                          )
                                        : Icon(FontAwesomeIcons.heart)
                                  ],
                                )),
                            //sart from there//

                            // text == 0
                            //     ? Smalltext(text: "White strap plunge top")
                            //     : Smalltext(text: "Grey winter cardigan")

                            // Text(data[index])

                            SizedBox(
                              height: 40,
                            ),
                            Smalltext(text: data[index]),

                            SizedBox(
                              height: 30,
                            ),
                            // mainn()
                            Wrap(direction: Axis.horizontal, children: [
                              // Bigtext(text: names[index],

                              CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage(circle[index]),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Bigtext(text: names[index]),
                            ])
                          ],
                        ),
                      ),
                    ])),
          ),
        ));
  }
}

// Widget buildimagecard(int index) => SingleChildScrollView(
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//         child: Container(
//           child: Column(
//             children: [
              
//             ],
//           ),
//         ),
//       ),
//     );
