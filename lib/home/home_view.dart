import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Login'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Image.asset("assets/images/arsenal.jpg", width: 500,
              height: 300,),
    ),
    );
  }
}