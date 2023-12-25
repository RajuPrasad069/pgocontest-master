import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TermAndConditions extends StatefulWidget {
  const TermAndConditions({super.key});

  @override
  State<TermAndConditions> createState() => _TermAndConditionsState();
}

class _TermAndConditionsState extends State<TermAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Term And Conditions"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.back();
        },icon:Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Term And Conditions",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 17
            ),),
            SizedBox(height: Get.height*0.01,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make",
              textAlign: TextAlign.justify,style: TextStyle(
                  color: Colors.grey[600]
              ),)
          ],
        ),
      ),
    );
  }
}
