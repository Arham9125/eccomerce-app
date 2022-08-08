import 'package:flutter/material.dart';
import 'package:project/pay.dart';
import 'package:project/payment_int.dart';
import 'package:project/splash.dart';
import 'package:get/get.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      "pk_test_51LP44nApIodqiXEtKQWCO5b9OpjFUYo7UKVgZlWg1oG16Ihl4HETt1spqhAQdGIONJP12kCe7RsSW5owsLL6Lfw000OIQMOkw9";
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
