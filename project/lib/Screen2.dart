import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pay.dart';
import 'package:project/widgets/card.dart';
import 'package:project/widgets/textwidget.dart';

class Screen2 extends StatelessWidget {
  List pics = [
    Image.asset("assets/images/1f.png"),
    Image.asset("assets/images/2f.png"),
    Image.asset("assets/images/3f.png"),
    Image.asset("assets/images/4f.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 8,
            ),
            Cardd(img: "assets/images/1f.png"),
            SizedBox(
              height: 8,
            ),
            Cardd(img: "assets/images/2f.png"),
            SizedBox(
              height: 8,
            ),
            Cardd(img: "assets/images/3f.png"),
            SizedBox(
              height: 8,
            ),
            Cardd(img: "assets/images/4f.png"),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Text("Total:",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Price(text: "\$ 25.99"),

                  //button//

                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pay()));
                    },
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade400,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text("Pay Now",
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
