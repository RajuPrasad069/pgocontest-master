
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pgocontest/views/screen/splash_screen.dart';

import 'bottom_navi.dart';
void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple
      ),
      home: BottomNav(),
    );
  }
}

