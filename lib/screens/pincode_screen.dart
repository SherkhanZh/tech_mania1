import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:code_input/code_input.dart';

class PincodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechMania',
      color: Colors.red,
      home: Scaffold(
          backgroundColor: Colors.red,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('TechMania', style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
              Center(child: _buildCodeInput()),
            ],
          )
      ),
    );
  }

  Widget _buildCodeInput() {
    return CodeInput(
      length: 4,
      keyboardType: TextInputType.number,
      builder: CodeInputBuilders.lightCircle(),
      spacing: 8,
      onFilled: (value) => print('Your input is $value.'),
      onDone: (value) => print('Your input is $value.'),
    );
  }
}