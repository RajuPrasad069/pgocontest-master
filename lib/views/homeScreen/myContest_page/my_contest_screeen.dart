import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyContestPage extends StatefulWidget {
  const MyContestPage({super.key});

  @override
  State<MyContestPage> createState() => _MyContestPageState();
}

class _MyContestPageState extends State<MyContestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Contest"),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: (BuildContext context , int index){
        return
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Stack(
            children: [
              Image.asset("assets/images/contestTabBar.png"),
              Image.asset("assets/images/contestContent1.png"),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Column(
                          children: [
                            Text("Congratulations!",style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      color: Colors.green
                                  ),
                                  height: Get.height*0.032,
                                  width: Get.width*0.49,

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0,left: 8),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/winner_logo.png",
                                      width: Get.width*0.035,),
                                      SizedBox(width: Get.width*0.014,),
                                      Text("Percentage 30% Won ₹20 ",style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.white
                                      ),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                            Text("10 Jun 2023",style: TextStyle(
                                fontSize:16,color: Colors.black,fontWeight: FontWeight.bold
                            ),)

                          ],
                        ))
                  ],
                ),
              ),
              Positioned(
                  bottom: 10,right: 0,
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height*0.036,
                          width: MediaQuery.of(context).size.width*0.27,
                          child: ElevatedButton(onPressed: (){}, child: Text("View Details",style: TextStyle(
                              fontSize: 11
                          ),)
                            ,style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff300469),
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23),
                            )),))
                    ],
                  ))
            ],
        ),
          );

      })
    );
  }
}
