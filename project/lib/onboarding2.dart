import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project/signup.dart';
import 'package:project/onboarding-img.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:onboarding/onboarding.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  @override
  State<Onboarding> createState() => _Onboarding();
}

class _Onboarding extends State<Onboarding> {
  PageController _controller = PageController();

  bool _Lastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                _Lastpage = (index == 2);
              });
            },
            controller: _controller,
            children: [
              Img(),
              Img2(),
              Img3(),
            ],
          ),
          _Lastpage
              ? Container(
                  alignment: Alignment(-0.2, 0.76),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sign()));
                    },
                    child: Container(
                      height: 68,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Continue with insta ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 27)),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Container(
                  alignment: Alignment(-0.2, 0.76),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sign()));
                    },
                    child: Container(
                      height: 68,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text(
                          "Shop Now",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 27)),
                        ),
                      ),
                    ),
                  ),
                ),
          Container(
              alignment: Alignment(0, 0.90),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    activeDotColor: Colors.pink.shade400,
                    dotColor: Colors.black),
              ))
        ]),
      ),
    );
  }
}
