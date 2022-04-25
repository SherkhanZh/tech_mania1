import 'package:flutter/material.dart';
import 'package:tech_mania1/constants.dart';
import 'package:tech_mania1/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: (){},
        ),
        actions: [IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: (){},),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.black), onPressed: (){},),
        SizedBox(width: kDefaultPadding / 2,)],
      ),
      body: Body(),
    );
  }
}

