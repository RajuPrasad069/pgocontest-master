import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CompletePage extends StatefulWidget {
  const CompletePage({super.key});

  @override
  State<CompletePage> createState() => _CompletePage();
}

class _CompletePage extends State<CompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complete"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Stack(
          children:[
            Container(
                height: Get.height,
                child: Image.asset("assets/images/referandearnbg.png",fit: BoxFit.fill,)),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child:
              Container(
                height: Get.height*0.82,
                width: Get.width*0.93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        //end: Alignment.centerLeft,
                        colors: [
                          Color(0xff2E0467),
                          //Color(0xff300469),
                          Color(0xff971DC3)

                        ]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      Text("Congratulations!",style: TextStyle(
                          fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold
                      ),textAlign: TextAlign.center,),
                      SizedBox(height:Get.height*0.04),
                      Stack(
                          children:[
                            Image.asset("assets/images/birthday_gift.png",width: Get.width*0.42,),
                            Padding(
                              padding: const EdgeInsets.only(left: 38.0,top: 30),
                              child: Image.asset("assets/images/winner_cup.png",width: Get.width*0.24,),
                            ),
                          ]
                      ),
                      SizedBox(height:Get.height*0.035),
                      Text("You've Won",style: TextStyle(
                          fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400
                      ),textAlign: TextAlign.center,),
                      SizedBox(height:Get.height*0.015),
                      Text("₹15",style: TextStyle(
                          fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold
                      ),textAlign: TextAlign.center,),
                      SizedBox(height:Get.height*0.015),
                      Text("Percent: 20%",
                        style: TextStyle(
                            fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold
                        ),textAlign: TextAlign.center,),
                      SizedBox(height:Get.height*0.025),


                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height:Get.height*0.06,
                              child: ElevatedButton(onPressed: (){},
                                child: Text("Go to Lobby",style: TextStyle(
                                    fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                                ),),style: ElevatedButton.styleFrom(backgroundColor: Color(0xfffFF9000),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(23)
                                    )),
                              ),
                            ),
                            SizedBox(width:Get.width*0.025),
                            SizedBox(
                              height:Get.height*0.06,
                              child: ElevatedButton(onPressed: (){},
                                child: Text("View Details",style: TextStyle(
                                    fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                                ),),style: ElevatedButton.styleFrom(backgroundColor: Color(0xff300469),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(23)
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height:Get.height*0.055),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image.asset("assets/images/facebook_logo.png"),
                              SizedBox(height:Get.height*0.009),
                              Text("Facebook",style: TextStyle(
                                  fontSize: 14,color: Colors.white
                              ),)
                            ],
                          ),
                          SizedBox(width:Get.width*0.055),
                          Column(
                            children: [
                              Image.asset("assets/images/whatsapp.png",
                                width: Get.width*0.11,),
                              SizedBox(height:Get.height*0.009),
                              Text("Whatsapp",style: TextStyle(
                                  fontSize: 14,color: Colors.white
                              ),)
                            ],
                          ),
                          SizedBox(width:Get.width*0.055),
                          Column(
                            children: [
                              Image.asset("assets/images/share_logo.png",),
                              SizedBox(height:Get.height*0.009),
                              Text("Others",style: TextStyle(
                                  fontSize: 14,color: Colors.white
                              ),)
                            ],
                          ),

                        ],
                      )

                    ],
                  ),
                ),
              ),
            )

          ]
      ),
    );
  }
}
