// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:project/controller.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   Map<String, dynamic>? paymentIntentData;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Center(
//         child: InkWell(
//           onTap: ()async{
//             await Payment();
//           },
//           child: Container(
//             height: 50,
//             width: 200,
//             color: Colors.green,
//             child: Center(
//               child: Text('Pay' , style: TextStyle(color: Colors.white , fontSize: 20),),
//             ),
//           ),
//         ),
//       ),
      
//     );

//     Future Payment() async {
//       try {
//         paymentIntentData = await createPaymentIntent("20", "USD");

//         await Stripe.instance.initPaymentSheet(
//             paymentSheetParameters: SetupPaymentSheetParameters(
//                 paymentIntentClientSecret: paymentIntentData!["client_secret"],
//                 merchantDisplayName: "Asif",
//                 style: ThemeMode.dark,
//                 )
//                 );
//         displayPaymentSheet();
//       } catch (e) {
//         print("exception" + e.toString());
//       }
//     }
//   }

//   displayPaymentSheet() async {
//     try {
//       Stripe.instance.presentPaymentSheet(
//           parameters: PresentPaymentSheetParameters(
//         clientSecret: paymentIntentData!["client_secret"],
       
//         confirmPayment: true,
//       ));

//       setState(() {
//         paymentIntentData = null;
//       });
//     } catch (e) {
//       print("exception" + e.toString());
//     }
//   }

//   createPaymentIntent(String amount, String currency) async {
//     try {
//       Map<String, dynamic> body = {
//         "amount": calculateAmount(amount),
//         "currency": "",
//         "payment_methoed_types[]": "card"
//       };

//       var response = await http.post(
//           Uri.parse("https://api.stripe.com/v1/payment_instance"),
//           body: body,
//           headers: {
//             'Authorization':
//                 'Bearer sk_test_51LP44nApIodqiXEtB8g9OY1hfydUNPWGjV1pHPamU7WoyZbCqyD0j2PM2ALI9uG0eUktFn8BYzNh6dtYmfzCksQQ00KSEZFy54',
//             'Content-Type': 'application/x-www-form-urlencoded'
//           });

//       return jsonDecode(response.body.toString());
//     } catch (e) {
//       print("exception" + e.toString());
//     }
//   }

//   calculateAmount(String amount) {
//     final price = int.parse(amount) * 100;
//     return price.toString();
//   }
// }


// //nn//
// createPaymentIntent(String amount, String currency) async {
//     try {
//       Map<String, dynamic> body = {
//         "amount": calculateAmount(amount),
//         "currency": "",
//         "payment_methoed_types[]": "card"
//       };

//       var response = await http.post(
//           Uri.parse("https://api.stripe.com/v1/payment_instance"),
//           body: body,
//           headers: {
//             'Authorization':
//                 'Bearer sk_test_51LP44nApIodqiXEtB8g9OY1hfydUNPWGjV1pHPamU7WoyZbCqyD0j2PM2ALI9uG0eUktFn8BYzNh6dtYmfzCksQQ00KSEZFy54',
//             'Content-Type': 'application/x-www-form-urlencoded'
//           });

//       return jsonDecode(response.body.toString());
//     } catch (e) {
//       print("exception" + e.toString());
//     }
//   }
