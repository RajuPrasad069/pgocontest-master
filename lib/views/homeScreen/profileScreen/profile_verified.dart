import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileVerified extends StatefulWidget {
  const ProfileVerified({super.key});

  @override
  State<ProfileVerified> createState() => _ProfileVerifiedState();
}

class _ProfileVerifiedState extends State<ProfileVerified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile Verified"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body:
      Stack(
          children:[
            Container(
                height: Get.height,
                child: Image.asset("assets/images/referandearnbg.png",fit: BoxFit.fill,)),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child:
                Container(
                  height: Get.height*0.59,
                  width: Get.width*0.93,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        Stack(
                            children:[
                              Image.asset("assets/images/profile2.png",width: Get.width*0.21,),
                              Positioned(
                                left: 56,
                                top: 60,
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.black,
                                    child: Icon(Icons.camera_alt,color: Colors.white,size: 12,)),
                              )

                            ]
                        ),
                        SizedBox(height: Get.height*0.036,),
                        SizedBox(
                          height: Get.height*0.06,
                          width: Get.width*0.76,
                          child:
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                              labelText: 'Full Name',
                              labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                              hintStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(top: 10),
                              prefixIcon: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Image.asset("assets/images/profile_image.png")),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff2E0467)
                                  ),
                                  borderRadius: BorderRadius.circular(23)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(23)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height*0.026,),
                        SizedBox(
                          height: Get.height*0.06,
                          width: Get.width*0.76,
                          child:
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: '+91 7783674929',
                              labelText: 'Mobile No',
                              labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                              hintStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(top: 10),
                              prefixIcon: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Image.asset("assets/images/call_logo.png")),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff2E0467)
                                  ),
                                  borderRadius: BorderRadius.circular(23)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(23)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height*0.026,),
                        SizedBox(
                          height: Get.height*0.06,
                          width: Get.width*0.76,
                          child:
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Exaple12@gmail.com',
                              labelText: 'Email Id',
                              labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                              hintStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(top: 10),
                              prefixIcon: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Image.asset("assets/images/email_logo.png")),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff2E0467)
                                  ),
                                  borderRadius: BorderRadius.circular(23)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(23)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height*0.026,),
                        SizedBox(
                          height: Get.height*0.06,
                          width: Get.width*0.76,
                          child:
                          Stack(
                              children:[
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Verified',
                                    labelText: 'Complete Your Kyc',
                                    labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                                    hintStyle: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),
                                    contentPadding: EdgeInsets.only(top: 10),
                                    prefixIcon: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset("assets/images/kyc_logo.png")),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff2E0467)
                                        ),
                                        borderRadius: BorderRadius.circular(23)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(23)
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(height: Get.height*0.026,),
                        SizedBox(
                            height: Get.height*0.045,
                            width: Get.width*0.40,
                            child:
                            ElevatedButton(onPressed: (){}, child: Text("Save"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff2E0467),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(23)
                                  )
                              ),)),

                      ],
                    ),
                  ),
                ),
              ),
            )

          ]
      ),

    );
  }
}
