import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/widgets/textwidget.dart';

class Pics extends StatelessWidget {
  dynamic image;
  String text;
  dynamic clr;
  String bigtext;
  dynamic roundimg;

  Pics(
      {required this.text,
      required this.clr,
      required this.roundimg,
      required this.image,
      required this.bigtext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Card(
              color: Colors.grey.shade200,
              child: Image.asset(image),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Price(text: "\$25.99"),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  FontAwesomeIcons.heart,
                  color: clr,
                )
              ],
            ),
            Container(child: Smalltext(text: text)),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(roundimg),
                ),
                Container(
                  child: Bigtext(text: bigtext),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
