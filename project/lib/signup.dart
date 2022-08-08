import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/screen1.dart';
import 'package:project/home.dart';

class Sign extends StatelessWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    "assets/images/splash.png",
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            //textfields//

            SizedBox(
              height: 40,
            ),

            //textfield emial//

            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 4, bottom: 10),
                child: Card(
                  shadowColor: Colors.white38,
                  elevation: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 10,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        )),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Your Email",
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade500),
                                prefixIcon: Icon(
                                  Icons.people,
                                  size: 40,
                                ),
                                fillColor: Colors.grey.shade200,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),

                        //textfield pass//
                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade500),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: 40,
                                ),
                                fillColor: Colors.grey.shade200,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //Login button//

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.pink.shade400,
                                borderRadius: BorderRadius.circular(10)),
                            height: 50,
                            width: 170,
                            child: Center(
                                child: Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            )),
                          ),
                        ),

                        //Or//

                        SizedBox(
                          height: 20,
                        ),

                        Center(
                            child: Text(
                          "-----------------  OR  ----------------",
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade400),
                        )),

                        SizedBox(height: 20),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Screen1()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.pink.shade400,
                                borderRadius: BorderRadius.circular(10)),
                            height: 50,
                            width: 220,
                            child: Center(
                                child: Text(
                              "Login with Phone",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            )),
                          ),
                        ),

                        //create acc//
                        SizedBox(
                          height: 20,
                        ),

                        Center(
                            child: Text(
                          "Create account",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
