import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widget/kbcquestion_widget.dart';
import '../result_pages/result_first_page.dart';

class LetPlaySecond extends StatefulWidget {
  const LetPlaySecond ({super.key});

  @override
  State<LetPlaySecond > createState() => _LetPlayStateSecond ();
}

class _LetPlayStateSecond  extends State<LetPlaySecond > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's Play"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff300469),
                  borderRadius: BorderRadius.circular(23),
                ),
                height: Get.height * 0.04,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: Get.width * 0.07,
                          height: Get.height * 0.03,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(23),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Positioned(
                            top: 0,
                            child: Image.asset(
                              "assets/images/king_logo.png",
                              height: Get.height*0.05,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "0/50",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: Get.height*0.03,),
              Image.asset("assets/images/watch_logo.png"),
              SizedBox(height: Get.height*0.005,),
              Text("Time Left | 01:00",style: TextStyle(
                  fontSize: 15,fontWeight: FontWeight.bold
              ),),
              SizedBox(height: Get.height*0.03,),
              Text("Who Is The First President Of India ?",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
              ),),
              SizedBox(height: Get.height*0.03,),
              KbcQuestionWidget(),
              SizedBox(height: Get.height*0.025,),
              KbcQuestionWidget(),
              SizedBox(height: Get.height*0.025,),
              KbcQuestionWidget(),
              SizedBox(height: Get.height*0.025,),
              KbcQuestionWidget(),
              SizedBox(height: Get.height*0.055,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){}, child: Text("Privious",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold
                      ),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff2E0467),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23)
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: Get.width*0.055,),
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      Get.to(ResultFirstPage());
                    }, child: Text("Next",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold
                      ),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff2E0467),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23)
                          )
                      ),
                    ),
                  ),
                ],
              )
            ]
        ),
      ),
    );
  }
}



