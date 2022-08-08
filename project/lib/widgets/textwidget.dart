import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Bigtext extends StatelessWidget {
  String text;

  Bigtext({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.raleway(
          textStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
        ));
  }
}

class Smalltext extends StatelessWidget {
  String text;

  Smalltext({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.raleway(
          textStyle: TextStyle(
              color: Colors.grey.shade900,
              fontWeight: FontWeight.w500,
              fontSize: 14)),
    );
  }
}

class Price extends StatelessWidget {
  String text;

  Price({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.pink, fontWeight: FontWeight.w800, fontSize: 23),
    );
  }
}

class BigBtext extends StatelessWidget {
  String text;
  double size;

  BigBtext({required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.raleway(
          textStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: size),
        ));
  }
}

class Smalltextc extends StatelessWidget {
  String text;
  double size;
  dynamic clr;

  Smalltextc({required this.text, required this.size, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.raleway(
          textStyle: TextStyle(
              color: clr, fontWeight: FontWeight.w400, fontSize: size)),
    );
  }
}

textwidget(String text, dynamic clr, double size, dynamic weight) {
  return Text(
    text,
    style: GoogleFonts.raleway(
        textStyle: TextStyle(color: clr, fontWeight: weight, fontSize: size)),
  );
}

// class test extends StatelessWidget {
//   String text;
//   bool? change;
//   double size;
//   dynamic clr;

//   test({required this.text, required this.size, required this.clr});

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       change == null ? "khan" : text,
//       style: GoogleFonts.raleway(
//           textStyle: TextStyle(
//               color: clr, fontWeight: FontWeight.w400, fontSize: size)),
//     );
//   }
// }
