import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/widgets/textwidget.dart';

class INFO extends StatelessWidget {
  const INFO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment(-0.80, 0),
              child: BigBtext(
                text: "MATERIALS",
                size: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(child: textwidget("""
AS SEEN IN REDBOOK! You'll be primed 
and ready in the Perfect Situation 
Purple Long Sleeve Shift Dress when 
everything starts falling into place! This 
woven poly dress has a casual shift 
shape, accented by a rounded neckline.


""", Colors.grey.shade500, 16, FontWeight.w600)),
            Container(
              alignment: Alignment(-0.80, 0),
              child: BigBtext(
                text: "WASH INSTRUCTION",
                size: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(child: textwidget("""
AS SEEN IN REDBOOK! You'll be primed 
and ready in the Perfect Situation 
Purple Long Sleeve Shift Dress when 
everything starts falling into place! This 
woven poly dress has a casual shift 
shape, accented by a rounded neckline.


""", Colors.grey.shade500, 16, FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
