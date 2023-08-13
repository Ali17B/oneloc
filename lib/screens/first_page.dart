import 'dart:async';
import 'package:flutter/material.dart';
import 'package:oneloccase/screens/selection_page.dart';

class firstPage extends StatefulWidget {
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SonrakiSayfa()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 47, 47),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/splash_icon.png',
                width: 300,
                height: 85, 
              ),
            ),
          ),
          Image.asset(
            'assets/splash_logo.png', 
            width: 185,
            height: 150, 
          ),
        ],
      ),
    );
  }
}
