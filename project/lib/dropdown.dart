// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Drop extends StatefulWidget {
//   @override
//   State<Drop> createState() => _DropState();
// }

// class _DropState extends State<Drop> {
//   List number = ["1", "2", "3"];

//   String? value;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: DropdownButton <String>(
//           value: value,
//           items:  number.map((String items) {
//                 return DropdownMenuItem(
//                   value: items,
//                   child: Text(items),
//                 );
//               }).toList(),,
//           onChanged: (value) {
//             setState(() {
//               value = value;
//             });
//           }),
//     );

// DropdownMenuItem<String> newvalue(String number) =>
// DropdownMenuItem(
//         value: value,
//         child: Text("$number"))
//       ;
    
//   }
// }
