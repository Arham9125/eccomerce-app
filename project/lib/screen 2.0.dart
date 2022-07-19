// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project/widgets/textwidget.dart';

// class Screeen2 extends StatelessWidget {
//   List pics = [
//     Image.asset(
//       "assets/images/1f.png",
//     ),
//     Image.asset("assets/images/2f.png"),
//     Image.asset("assets/images/3f.png"),
//     Image.asset("assets/images/4f.png"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade200,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: ListView.builder(
//           itemCount: 4,
//           itemBuilder: (context, index) => Wrap(children: [
//             Container(
//               height: 130,
//               width: 700,
//               child: Padding(
//                 padding: EdgeInsets.only(top: 10, bottom: 8),
//                 child: Card(
//                   elevation: 1,
//                   child: ListTile(
//                     title: Text("Hawaiam Shirt",
//                         style: GoogleFonts.raleway(
//                           textStyle: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w800,
//                               fontSize: 18),
//                         )),
//                     subtitle: Text("SANDY WILLIAMS",
//                         style: GoogleFonts.raleway(
//                           textStyle: TextStyle(
//                               color: Colors.grey.shade500,
//                               fontWeight: FontWeight.w800,
//                               fontSize: 12),
//                         )),
//                     trailing: Price(text: "\$ 25.99"),
//                     leading: pics[index],
//                   ),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                 ),
//               ),
//             ),
//             Smalltext(text: "Total")
//           ]),
//         ),
//       ),
//     );
//   }
// }
