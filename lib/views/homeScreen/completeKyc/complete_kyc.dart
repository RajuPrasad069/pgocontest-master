import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CompleteKyc extends StatefulWidget {
  const CompleteKyc({super.key});

  @override
  State<CompleteKyc> createState() => _CompleteKycState();
}

class _CompleteKycState extends State<CompleteKyc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complete Your Kyc"),
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
                height: Get.height*0.37,
                width: Get.width*0.93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.white
                ),
                child: Padding(
                  padding:  EdgeInsets.all(23),
                  child: Column(
                    children: [
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
                      SizedBox(height: Get.height*0.04
                        ,),
                      SizedBox(
                        height: Get.height*0.06,
                        width: Get.width*0.76,
                        child:
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: '0000 0000 0000',
                            labelText: 'Aadhar Number',
                            labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                            hintStyle: TextStyle(fontSize: 12),
                            contentPadding: EdgeInsets.only(top: 10),
                            prefixIcon: Container(
                                padding: EdgeInsets.all(10),
                                child: Image.asset("assets/images/aadhar_logo.png")),
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
                      SizedBox(height: Get.height*0.05
                        ,),
                      SizedBox(
                          height: Get.height*0.055,
                          width: Get.width*0.50,
                          child:
                          ElevatedButton(onPressed: (){}, child: Text("Submit"),
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
          ]
      ),

    );
  }
}
