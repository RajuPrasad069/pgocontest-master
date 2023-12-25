import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'homeScreen/drawer_Screen/drawer_screen.dart';
import 'homeScreen/mytransaction_page/my_transactionsScreen.dart';
import 'notification/notification_Full.dart';

class FHomeScreen extends StatefulWidget {
  const FHomeScreen({super.key});

  @override
  State<FHomeScreen> createState() => _FHomeScreenState();
}

class _FHomeScreenState extends State<FHomeScreen> {
  var rajukey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
            key: rajukey,
            drawer: DrawerClass(),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon:Icon(Icons.home),label: "f"),
                BottomNavigationBarItem(icon:Icon(Icons.home),label: "f"),
                BottomNavigationBarItem(icon:Icon(Icons.home),label: "f"),

              ],
            ),
            body: Column(
                children: [
                  // ************ start drawer creation *************
                  Container(
                    height: Get.height*0.11,
                    width: double.infinity,
                    color: Color(0xff4B1795),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,left: 15),
                          child: Stack(
                            children: [
                              Center(
                                  child: Column(
                                    children: <Widget>[],
                                  )
                              ),
                              Positioned(
                                child: IconButton(
                                  icon: Icon(Icons.menu,color: Colors.white,size: 43,),
                                  onPressed: () => rajukey.currentState!.openDrawer(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.003,),
                        Image.asset("assets/images/logo.png",width: 70,height: 70,),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap:(){
                                    Get.to(NotificationFull());
                                  },
                                  child: Image.asset("assets/images/notification.png")),
                              GestureDetector(
                                  onTap: (){
                                    Get.to(MyTransactionPage());
                                  },
                                  child: Image.asset("assets/images/ruppee.png"))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ************ end drawer creation *************

                  // ************ start banner creation *************
                  Image.asset("assets/images/group.png"),
                  // ************ end banner creation *************

                  // ************ start tab creation *************
                  Container(
                    height: 30,
                    child: TabBar(
                      indicatorColor: Color(0xffFF3D00),
                      labelColor: Color(0xffFF3D00), //<-- selected text color
                      unselectedLabelColor: Color(0xff4B1795), //<-- Unselected text color
                      tabs: [
                        Text("Contest",style: TextStyle(fontSize: 18),),
                        Text("Tournament",style: TextStyle(fontSize: 18),),
                        Text("Complete",style: TextStyle(fontSize: 18
                        ),),
                      ],
                    ),
                  ),
                  // ************ end tab creation *************

                  // ************ start tabBar_view Content creation *************
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TabBarView(
                          children: [
                            Container(
                                child:
                                ListView.builder(
                                    itemCount: 40,
                                    itemBuilder: (BuildContext context, int index){
                                      return
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child:
                                          Stack(
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
                                                            Text("25 Question",style: TextStyle(
                                                                fontSize: 14,fontWeight: FontWeight.bold),),
                                                            SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                                                            Stack(
                                                              children: [
                                                                Container(
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(9),
                                                                      border: Border.all(
                                                                        color: Colors.red,
                                                                      )
                                                                  ),
                                                                  height: MediaQuery.of(context).size.height*0.032,
                                                                  width: MediaQuery.of(context).size.width*0.39,

                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.only(top: 4.0,left: 8),
                                                                  child: Row(
                                                                    children: [
                                                                      Image.asset("assets/images/trophy.png"),
                                                                      Text("Play & Win: ₹ 5000",style: TextStyle(
                                                                          fontWeight: FontWeight.bold,color: Color(0xffD93400)
                                                                      ),),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
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
                                                          Text("2500 Users Playing",style: TextStyle(
                                                              fontSize: 8,fontWeight: FontWeight.bold
                                                          ),),

                                                        ],

                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
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
                                                      SizedBox(height: MediaQuery.of(context).size.height*0.016,),
                                                      SizedBox(
                                                          height: MediaQuery.of(context).size.height*0.034,
                                                          width: MediaQuery.of(context).size.width*0.21,
                                                          child: ElevatedButton(onPressed: (){}, child: Text("Join Now",style: TextStyle(
                                                              fontSize: 11
                                                          ),)
                                                            ,style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(23)
                                                            )),))
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        );

                                    }
                                )
                            ),
                            Container(
                                child:
                                ListView.builder(
                                    itemCount: 40,
                                    itemBuilder: (BuildContext context, int index){
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
                                                            Text("25 Question",style: TextStyle(
                                                                fontSize: 14,fontWeight: FontWeight.bold),),
                                                            SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                                                            Stack(
                                                              children: [
                                                                Container(
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(9),
                                                                      border: Border.all(
                                                                        color: Colors.red,
                                                                      )
                                                                  ),
                                                                  height: MediaQuery.of(context).size.height*0.032,
                                                                  width: MediaQuery.of(context).size.width*0.39,

                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.only(top: 4.0,left: 8),
                                                                  child: Row(
                                                                    children: [
                                                                      Image.asset("assets/images/trophy.png"),
                                                                      Text("Play & Win: ₹ 5000",style: TextStyle(
                                                                          fontWeight: FontWeight.bold,color: Color(0xffD93400)
                                                                      ),),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
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
                                                          Text("2500 Users Playing",style: TextStyle(
                                                              fontSize: 8,fontWeight: FontWeight.bold
                                                          ),),

                                                        ],

                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
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
                                                      SizedBox(height: MediaQuery.of(context).size.height*0.016,),
                                                      SizedBox(
                                                          height: MediaQuery.of(context).size.height*0.034,
                                                          width: MediaQuery.of(context).size.width*0.21,
                                                          child: ElevatedButton(onPressed: (){}, child: Text("Join Now",style: TextStyle(
                                                              fontSize: 11
                                                          ),)
                                                            ,style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(23)
                                                            )),))
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        );

                                    }
                                )
                            ),
                            Container(
                                child:
                                ListView.builder(
                                    itemCount: 40,
                                    itemBuilder: (BuildContext context, int index){
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
                                                            Text("25 Question",style: TextStyle(
                                                                fontSize: 14,fontWeight: FontWeight.bold),),
                                                            SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                                                            Stack(
                                                              children: [
                                                                Container(
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(9),
                                                                      border: Border.all(
                                                                        color: Colors.red,
                                                                      )
                                                                  ),
                                                                  height: MediaQuery.of(context).size.height*0.032,
                                                                  width: MediaQuery.of(context).size.width*0.39,

                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.only(top: 4.0,left: 8),
                                                                  child: Row(
                                                                    children: [
                                                                      Image.asset("assets/images/trophy.png"),
                                                                      Text("Play & Win: ₹ 5000",style: TextStyle(
                                                                          fontWeight: FontWeight.bold,color: Color(0xffD93400)
                                                                      ),),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
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
                                                          Text("2500 Users Playing",style: TextStyle(
                                                              fontSize: 8,fontWeight: FontWeight.bold
                                                          ),),

                                                        ],

                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
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
                                                      SizedBox(height: MediaQuery.of(context).size.height*0.016,),
                                                      SizedBox(
                                                          height: MediaQuery.of(context).size.height*0.034,
                                                          width: MediaQuery.of(context).size.width*0.21,
                                                          child: ElevatedButton(onPressed: (){}, child: Text("Join Now",style: TextStyle(
                                                              fontSize: 11
                                                          ),)
                                                            ,style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(23)
                                                            )),))
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        );

                                    }
                                )
                            ),
                          ],
                        ),
                      )
                  ),
                ]
            )
        ),
      ),
    );
  }
}
