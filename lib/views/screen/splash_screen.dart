import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/pageview_widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void isLogin(){
    Timer(Duration(seconds: 5),(){
      Get.to(PageViewWidget());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:
          Stack(
            children: [
              Container(
                width: Get.width,
                height: Get.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/bgSplash.png')
                  ),
                ),
              ),
              Positioned(
                child:
                Center(
                    child: Image.asset('assets/images/logo.png',scale: 2,)),
              )
            ],
          )
      ),
    );
  }
}
