import 'package:flutter/material.dart';
import 'package:oneloccase/screens/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Başlangıç Uygulaması',
      home: firstPage(), 
    );
  }
}
