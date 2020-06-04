import 'package:flutter/material.dart';
import 'Pages/home.dart';

void main() => runApp(MyYoutube());


class MyYoutube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        primaryColor: Colors.red,
      primarySwatch: Colors.red,
        primaryColor: Colors.grey[800],
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.grey[800],
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
