import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/widgets/textwidget.dart';

class Cardd extends StatelessWidget {
  String img;

  Cardd({required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 700,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 30,
          child: ListTile(
            leading: Image.asset(img),
            title: Text("Hawaian Shirt",
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                )),
            subtitle: Text("SANDY WILLIAMS",
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w800,
                      fontSize: 12),
                )),
            trailing: Price(text: "\$ 25.99"),
          ),
        ),
      ),
    );
  }
}
