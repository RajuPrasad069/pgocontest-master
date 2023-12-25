import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResultFirstPage extends StatefulWidget {
  const ResultFirstPage({super.key});

  @override
  State<ResultFirstPage> createState() => _ResultFirstPageState();
}

class _ResultFirstPageState extends State<ResultFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Result"),
        centerTitle: true,
      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Stack(
              children: [
                Image.asset("assets/images/contestTabBar.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0,left: 10),
                  child: Column(
                    children: [
                      Image.asset("assets/images/winner_logo.png",height: Get.height*0.08,),
                      SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                      Text("Kartik Gupta",style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Column(
                            children: [
                              Text("10 January 2023",style: TextStyle(
                                  fontSize: 14,fontWeight: FontWeight.bold),),
                              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                              Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        border: Border.all(
                                          color: Colors.green,
                                        )
                                    ),
                                    height: MediaQuery.of(context).size.height*0.032,
                                    width: MediaQuery.of(context).size.width*0.42,

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0,left: 8),
                                    child: Row(
                                      children: [
                                        Text("Percentage: 80%  Rank #22",style: TextStyle(
                                            fontWeight: FontWeight.bold,color: Color(0xff0A801A),
                                          fontSize: 12
                                        ),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                              Text("Won: ₹100",style: TextStyle(
                                  fontSize:14,color: Color(0xff0A801A),fontWeight: FontWeight.bold
                              ),)

                            ],
                          ))
                    ],
                  ),
                ),
                Positioned(
                    right: 8,top: 5,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 38.0),
                              child: Text("03:34 PM",style: TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.bold
                              ),),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                            Row(
                              children: [
                                Text("Question",style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold
                                )),
                                SizedBox(width: MediaQuery.of(context).size.width*0.009,),
                                Container(
                                  height: Get.height*0.03,
                                  width: Get.width*0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(23)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5.0,left: 4),
                                    child: Text("50",style: TextStyle(
                                        fontSize: 12,fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    )),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                            Row(
                              children: [
                                Text("Attempted",style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold
                                )),
                                Container(
                                  height: Get.height*0.03,
                                  width: Get.width*0.06,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(23)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5.0,left: 4),
                                    child: Text("50",style: TextStyle(
                                        fontSize: 12,fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    )),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Row(
                                children: [
                                  Text("Currect",style: TextStyle(
                                      fontSize: 15,fontWeight: FontWeight.bold
                                  )),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.009,),
                                  Container(
                                    height: Get.height*0.03,
                                    width: Get.width*0.06,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(23)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5.0,left: 4),
                                      child: Text("50",style: TextStyle(
                                          fontSize: 12,fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),

                      ],
                    ))
              ],
            ),
          ),
          Container(
            height: Get.height*0.06,
            decoration: BoxDecoration(
              color: Color(0xff300469),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34.0),
                  child: Text("Ranks",style: TextStyle(
                    color: Colors.white,fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 34.0),
                  child: Text("Winnings",style: TextStyle(
                      color: Colors.white,fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 40,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 5.0,right: 10,left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: ListTile(
                        leading: Image.asset("assets/images/winner_logo.png",
                          width: Get.width*0.07,),
                        title: Text("Kartik Gupta",style: TextStyle(
                            color: Colors.black,fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                        subtitle: Text("#01",style: TextStyle(
                          color: Colors.black,fontSize: 16,
                        ),),
                        trailing: Text("₹1000",style: TextStyle(
                            color: Colors.black,fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
