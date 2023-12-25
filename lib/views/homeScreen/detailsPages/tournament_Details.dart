import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TournamentDetails extends StatefulWidget {
  const TournamentDetails({super.key});

  @override
  State<TournamentDetails> createState() => _TournamentDetails();
}

class _TournamentDetails extends State<TournamentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tournament Details"),
        centerTitle: true,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/contestTabBar.png"),
                Image.asset("assets/images/contestContent1.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Play & Wins:",style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xff4B1795),),),
                              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                              Text("₹ 5000",style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xff4B1795),)),
                              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                              Text("Entry Fees: ₹ 100",style: TextStyle(
                                  fontSize:12,color: Colors.black
                              ),)

                            ],
                          ))
                    ],
                  ),
                ),
                Positioned(
                    right: 10,top: 5,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text("End in 00:45:03",style: TextStyle(
                                fontSize: 12,fontWeight: FontWeight.bold
                            ),),

                          ],

                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.002,),
                        Row(
                          children: [
                            Container(
                              height:7,
                              width:7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff00BC19)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("Live",style: TextStyle(color: Color(0xff00BC19),
                                fontSize: 14,fontWeight: FontWeight.bold
                            ),),

                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                        Container(
                          child: GestureDetector(
                            onTap: (){
                              showDialog(context: context, builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Color(0xff2E0467),
                                  title:
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                        Text("Rank",style: TextStyle(
                                            fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold
                                        ),),
                                        Text("Winnings",style: TextStyle(
                                            fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold
                                        ),)
                                      ]
                                  ),
                                  content:
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height*0.25,
                                    width: MediaQuery.of(context).size.width*5,
                                    child: Column(
                                      children: [
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Text("#1",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                              Text("₹1000",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                            ]
                                        ),
                                        Divider(
                                          height: 5,
                                          thickness: 0.7,
                                          color: Colors.white,
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Text("#2",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                              Text("₹500",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                            ]
                                        ),
                                        Divider(
                                          height: 5,
                                          thickness: 0.7,
                                          color: Colors.white,
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Text("#3",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                              Text("₹400",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                            ]
                                        ),
                                        Divider(
                                          height: 5,
                                          thickness: 0.7,
                                          color: Colors.white,
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Text("#4",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                              Text("₹300",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                            ]
                                        ),
                                        Divider(
                                          height: 5,
                                          thickness: 0.7,
                                          color: Colors.white,
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Text("#5",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                              Text("₹200",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                            ]
                                        ),
                                        Divider(
                                          height: 5,
                                          thickness: 0.7,
                                          color: Colors.white,
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Text("#6",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                              Text("₹100",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                            ]
                                        ),
                                        Divider(
                                          height: 5,
                                          thickness: 0.7,
                                          color: Colors.white,
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Text("#6",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                              Text("₹50",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                            ]
                                        ),
                                        Divider(
                                          height: 5,
                                          thickness: 0.7,
                                          color: Colors.white,
                                        ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Text("#7",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                              Text("₹40",style: TextStyle(
                                                  fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold
                                              ),),
                                            ]
                                        ),
                                        Divider(
                                          height: 5,
                                          thickness: 0.7,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    Center(
                                      child: TextButton(

                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          width:Get.width*0.45,
                                          decoration:BoxDecoration(
                                              color: Color(0xff971DC3),
                                              borderRadius: BorderRadius.circular(20)
                                          ),
                                          padding: const EdgeInsets.all(14),
                                          child: Center(
                                            child: const Text("Close",
                                              style: TextStyle(
                                                  color: Colors.white,fontWeight: FontWeight.bold,
                                                  fontSize: 12
                                              ),),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                              },
                            child: Text("View Rank BreakUp",style: TextStyle(
                                color: Color(0xff001EE2),fontWeight: FontWeight.bold,
                                fontSize: 12,decoration: TextDecoration.underline,decorationColor: Color(0xff001EE2)
                            ),),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            SizedBox(height: Get.height*0.01,),
            Text("Answer As Many Question As You Can"),
            SizedBox(height: Get.height*0.02,),
            Text("You Get 360 Seconds"),
            SizedBox(height: Get.height*0.02,),
            Text("50 Questions"),
            SizedBox(height: Get.height*0.043,),
            Center(
                child: SizedBox(
                  height: Get.height*0.05,
                  width: Get.width*0.38,
                  child: ElevatedButton(onPressed: (){},
                    child: Text("Register"), style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2E0467),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)
                        )
                    ),),
                )),
            SizedBox(height: Get.height*0.053,),
            Center(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 12,
                      width: 50,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: Get.width*0.053,),
                    Text("Game Rules",style: TextStyle(
                        color: Color(0xff7E2CF1),fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: Get.width*0.053,),
                    Container(
                      height: 12,
                      width: 50,
                      color: Colors.deepPurple,
                    ),
                  ],
                )
            ),
            SizedBox(height: Get.height*0.053,),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("A terms & conditions agreement dictates the rules, restrictions, obligations, and responsibilities while playing your game. a terms & conditions",
                  textAlign: TextAlign.center,style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 12,),),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
