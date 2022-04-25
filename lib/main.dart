import 'package:flutter/material.dart';
import 'package:tech_mania1/constants.dart';
import 'package:tech_mania1/models/product.dart';
import 'package:tech_mania1/screens/components/body.dart';
import 'package:tech_mania1/screens/details_screen.dart';
import 'package:tech_mania1/screens/home_screen.dart';
import 'package:tech_mania1/screens/pincode_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
       visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: Body(),
    );
  }
}

