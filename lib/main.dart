import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlashCard',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A38),
        primaryColorLight: Color(0xFFFBE0E6),
      ),
      home: MyHomePage(),
    );
  }
}
