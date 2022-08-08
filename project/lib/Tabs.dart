import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/home.dart';
import 'package:project/widgets/textwidget.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';

class Measuremments extends StatefulWidget {
  @override
  State<Measuremments> createState() => _MeasuremmentsState();
}

class _MeasuremmentsState extends State<Measuremments> {
  final labels = ["1", "2", "3", "4", "5"];

  dynamic value;
  dynamic nvalue;

  String? selected = "2";
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BigBtext(
                  text: "WAIST",
                  size: 15,
                ),
                BigBtext(
                  text: "LENGTH",
                  size: 15,
                ),
                BigBtext(
                  text: "BREADTH",
                  size: 15,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            //boxes//

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //43//
                Container(
                  height: 40,
                  width: 70,
                  color: Colors.grey.shade300,
                  child: Center(
                    child: BigBtext(
                      size: 17,
                      text: "43",
                    ),
                  ),
                ),
                //34//
                Container(
                  height: 40,
                  width: 70,
                  color: Colors.grey.shade300,
                  child: Center(
                    child: BigBtext(
                      size: 17,
                      text: "34",
                    ),
                  ),
                ),
                //76//
                Container(
                  height: 40,
                  width: 70,
                  color: Colors.grey.shade300,
                  child: Center(
                    child: BigBtext(
                      size: 17,
                      text: "76",
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textwidget("Color:", Colors.black, 22, FontWeight.w500),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.purple),
                ),

                //drop//
                Container(
                  color: Colors.grey,
                  height: 40,
                  width: 60,
                  child: DropdownButton(
                      isExpanded: true,
                      value: selected,
                      items: labels.map((selected) {
                        return DropdownMenuItem(
                          value: selected,
                          child: Center(
                              child: textwidget("$selected", Colors.black, 15,
                                  FontWeight.bold)),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selected == value;
                        });
                      }),
                ),

                //dropbutton//
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              alignment: Alignment(-0.80, 0),
              child: textwidget("Do you want to use this material",
                  Colors.black, 18, FontWeight.w500),
            ),

            SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  // value = change ? Colors.pink : Colors.white;
                  change = true;
                });
              },
              child: Wrap(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: value = change ? Colors.pink : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    height: 40,
                    width: 80,
                    child: Center(
                        child: textwidget(
                            "Yes", Colors.black, 14, FontWeight.w500)),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: value = change ? Colors.pink : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    height: 40,
                    width: 80,
                    child: Center(
                        child: textwidget(
                            "No", Colors.black, 14, FontWeight.w500)),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Smalltext(text: "Total"),
                Price(text: " \$25.99"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink.shade400,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 170,
                    child: Center(
                        child: Text(
                      "Add to Bag",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
