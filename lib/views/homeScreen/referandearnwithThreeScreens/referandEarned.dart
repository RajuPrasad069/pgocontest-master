import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ReferAndEarned extends StatefulWidget {
  const ReferAndEarned({super.key});

  @override
  State<ReferAndEarned> createState() => _ReferAndEarnedState();
}

class _ReferAndEarnedState extends State<ReferAndEarned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refer & Earn"),
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
                height: Get.height*0.72,
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
                      Text("Refer Your Friends \nAnd Earn",style: TextStyle(
                        fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold
                      ),textAlign: TextAlign.center,),
                      SizedBox(height:Get.height*0.04),
                      Image.asset("assets/images/share_refer.png",width: Get.width*0.24,),
                      SizedBox(height:Get.height*0.035),
                      Text("₹100",style: TextStyle(
                          fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold
                      ),textAlign: TextAlign.center,),
                      SizedBox(height:Get.height*0.035),
                      Text("Share This Link With Your Friend And After They \nInstall, Both Of You Will Get Cash Rewards.",
                        style: TextStyle(
                          fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
                      ),textAlign: TextAlign.center,),
                      SizedBox(height:Get.height*0.025),
                      SizedBox(
                         height:Get.height*0.065,
                        width: Get.width*0.44,
                        child: ElevatedButton(onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("aby1234",style: TextStyle(
                                    fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold
                                ),),
                                IconButton(onPressed: (){}, icon: Icon(Icons.copy))
                              ],
                            ),style: ElevatedButton.styleFrom(backgroundColor: Color(0xff300469),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23)
                          )),
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
