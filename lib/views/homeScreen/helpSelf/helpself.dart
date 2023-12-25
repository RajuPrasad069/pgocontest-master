import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help And Support"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: Get.height*0.06,),
            Image.asset("assets/images/helpsupport.png",width: Get.width*0.18,),
            SizedBox(height: Get.height*0.01,),
            Text("How Can We Help \nYou?",textAlign: TextAlign.center,style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 17
            ),),
            SizedBox(height: Get.height*0.03,),
            SizedBox(
              width: Get.width*0.5,
              child: ElevatedButton(onPressed: (){}, child: Row(
                children: [
                  Icon(Icons.call)
                  ,                Text("+91 8887-698-812"),
                ],
              ),
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xff300469),shape:
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23)
                )),),
            ),
            SizedBox(height: Get.height*0.01,),
            Container(
              height: Get.height*0.23,
              margin: EdgeInsets.all(23),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600,
                        blurRadius: 12,
                        spreadRadius: 2
                    )
                  ]
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Type Your Comment Here !',
                    contentPadding: EdgeInsets.only(left: 23),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: Get.height*0.03,),
            SizedBox(
              width: Get.width*0.45,
              child: ElevatedButton(onPressed: (){}, child: Text("Submit"),
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xff300469),shape:
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23)
                )),),
            ),
          ],
        ),
      ),
    );
  }
}
