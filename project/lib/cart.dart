import 'dart:ffi';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onboarding/onboarding.dart';
import 'package:project/Tabs.dart';
import 'package:project/tab2.dart';
import 'package:project/widgets/textwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> with SingleTickerProviderStateMixin {
  late TabController _controller;

  List move = [
    ("assets/images/girl.png"),
    ("assets/images/g1.png"),
    ("assets/images/g2.png"),
  ];
  bool tap = false;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(children: [
                  Card(
                    shadowColor: Colors.red,
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          image: DecorationImage(
                              image: AssetImage("assets/images/girl.png"))),
                    ),
                  ),
                  //icon back//
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  //icon heart//
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tap = true;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 310, top: 20),
                      child: Icon(
                        FontAwesomeIcons.heart,
                        size: 20,
                        color: tap ? Colors.red : Colors.black,
                      ),
                    ),
                  ),

                  //icon down//
                  Padding(
                    padding: const EdgeInsets.only(left: 350, top: 20),
                    child: Icon(
                      FontAwesomeIcons.arrowDown,
                      shadows: [],
                      size: 20,
                      color: Colors.black,
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 230, left: 140, right: 50),
                    child: SmoothIndicator(
                        effect:
                            WormEffect(activeDotColor: Colors.pink, radius: 10),
                        offset: 0,
                        count: 4),
                  )
                ]),
              ),
              //box2//
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Bigtext(
                          text: "Perfect Situation Purple Long Sleeve Dress",
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            alignment: Alignment(-0.90, 0),
                            child: Price(text: "\$ 25.99")),

                        //tabbar//
                        Container(
                            height: double.maxFinite,
                            width: double.maxFinite,
                            child: ContainedTabBarView(
                              tabs: [
                                BigBtext(text: "INFO", size: 15),
                                BigBtext(text: "Measurements", size: 15)
                              ],
                              tabBarProperties: TabBarProperties(
                                  indicatorColor: Colors.pink,
                                  labelColor: Colors.grey.shade300,
                                  unselectedLabelColor: Colors.black),
                              views: [
                                INFO(),
                                Measuremments(),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
