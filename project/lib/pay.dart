import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/widgets/textwidget.dart';

class Pay extends StatelessWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 130,
              ),
              Stack(
                children: [
                  Image.asset("assets/images/Ellipse.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 35, right: 20),
                    child: Image.asset("assets/images/tik.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              BigBtext(text: "Payment Sucessful", size: 25),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 2, left: 0),
                child: Smalltextc(
                  text: """
        Your order will be ready in 5 days, \n 
    including shipping, more details and \n
    options for tracking will be sent to \n 
                        your email 
                        
                        
                           Thanks!!!""",
                  size: 19,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Pay()));
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.pink.shade400,
                      borderRadius: BorderRadius.circular(1)),
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
        ),
      ),
    );
  }
}
