import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Img extends StatelessWidget {
  const Img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/1.png",
              ),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Row(children: [
            Container(
              alignment: Alignment(-0.90, -0.01),
              child: Text("No",
                  style: GoogleFonts.abrilFatface(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                alignment: Alignment(-0.90, -0.01),
                child: Text("1",
                    style: GoogleFonts.abrilFatface(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold))))
          ]),
          Container(
            alignment: Alignment(-0.99, 0.1),
            child: Text("Featured",
                style: GoogleFonts.abrilFatface(
                    textStyle: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            alignment: Alignment(-0.99, 0.25),
            child: Text("Tailored",
                style: GoogleFonts.abrilFatface(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            alignment: Alignment(-0.90, 0.47),
            child: Wrap(
              children: [
                Text(
                  "Jennifer Kingsley ",
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  " exploring the \n new range of winter fashion wear",
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//img2//

class Img2 extends StatelessWidget {
  const Img2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/2.png",
              ),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Row(children: [
            Container(
              alignment: Alignment(-0.90, -0.01),
              child: Text("No",
                  style: GoogleFonts.abrilFatface(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                alignment: Alignment(-0.90, -0.01),
                child: Text("2",
                    style: GoogleFonts.abrilFatface(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold))))
          ]),
          Container(
            alignment: Alignment(-0.99, 0.1),
            child: Text("Featured",
                style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        color: Colors.pink,
                        fontSize: 26,
                        fontWeight: FontWeight.w800))),
          ),
          Container(
            alignment: Alignment(-0.99, 0.25),
            child: Text("Tailored",
                style: GoogleFonts.abrilFatface(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            alignment: Alignment(-0.90, 0.47),
            child: Wrap(
              children: [
                Text(
                  "Jimmy Chuka",
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  "  exploring new spring \n sweater collection",
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Img3 extends StatelessWidget {
  const Img3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/3.png",
              ),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Row(children: [
            Container(
              alignment: Alignment(-0.90, -0.01),
              child: Text("No",
                  style: GoogleFonts.abrilFatface(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                alignment: Alignment(-0.90, -0.01),
                child: Text("3",
                    style: GoogleFonts.abrilFatface(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold))))
          ]),
          Container(
            alignment: Alignment(-0.99, 0.1),
            child: Text("Featured",
                style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        color: Colors.pink,
                        fontSize: 26,
                        fontWeight: FontWeight.w800))),
          ),
          Container(
            alignment: Alignment(-0.99, 0.25),
            child: Text("Tailored",
                style: GoogleFonts.abrilFatface(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
            alignment: Alignment(-0.90, 0.47),
            child: Wrap(
              children: [
                Text(
                  "Christain Lobi",
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  "  showing us his new \n  summer beach wears",
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
