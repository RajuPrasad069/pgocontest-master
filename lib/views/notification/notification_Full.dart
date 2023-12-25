import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NotificationFull extends StatefulWidget {
  const NotificationFull({super.key});

  @override
  State<NotificationFull> createState() => _NotificationFullState();
}

class _NotificationFullState extends State<NotificationFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Clear All",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold,),
            ),
            SizedBox(height:Get.height*0.01,),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                  itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(13),
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 8, // blur radius
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          height: Get.height*0.13,
                          width: Get.width,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New game play",style: TextStyle(
                                      fontSize: 23,fontWeight: FontWeight.bold,
                                      color: Color(0xff971DC3)),),
                                  Row(
                                    children: [Icon(Icons.calendar_month,color: Color(0xff971DC3),),
                                      Text("10-06-2023 11:20 PM")],
                                  )
                                ],
                              ),
                              Divider(
                                height: Get.height*0.01,
                                thickness: 0.3,
                                color: Colors.black,
                              ),
                              SizedBox(height: Get.height*0.004),
                              Text("Lorem ipsum is a long estab lished fact that a reader will be distracted by the readable content ofa page when looking at its layout.",
                                textAlign: TextAlign.justify,)
                            ],
                          ),
                        )
                      ]
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
