import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:pgocontest/views/homeScreen/detailsPages/contest_details.dart';
import 'package:pgocontest/views/homeScreen/drawer_Screen/drawer_screen.dart';
import 'package:pgocontest/views/homeScreen/mytransaction_page/my_transactionsScreen.dart';
import 'package:pgocontest/views/notification/notification_Full.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  var rajukey = GlobalKey<ScaffoldState>();

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: MotionTabBar(
          initialSelectedTab: "Home",
          useSafeArea: true, // default: true, apply safe area wrapper
          labels: const ["Home", "Result", "Profile", "Contact Us"],
          icons: const [Icons.home, Icons.upcoming_rounded, Icons.people_alt, Icons.contacts_rounded],

          // optional badges, length must be same with labels
          badges: [
            // Default Motion Badge Widget
            const MotionBadgeWidget(
              text: '99+',
              textColor: Colors.white, // optional, default to Colors.white
              color: Colors.red, // optional, default to Colors.red
              size: 18, // optional, default to 18
            ),

            // custom badge Widget
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(2),
              child: const Text(
                '48',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),

            // allow null
            null,

            // Default Motion Badge Widget with indicator only
            const MotionBadgeWidget(
              isIndicator: true,
              color: Colors.red, // optional, default to Colors.red
              size: 5, // optional, default to 5,
              show: true, // true / false
            ),
          ],
          tabSize: 65,
          tabBarHeight: 60,
          textStyle: const TextStyle(
            fontSize: 14,
            color: Colors.white70,
            fontWeight: FontWeight.w500,
          ),
          tabIconColor: Colors.white70,
          tabIconSize: 30.0,
          tabIconSelectedSize: 26.0,
          tabSelectedColor: Colors.white70,
          tabIconSelectedColor: Color(0xff300469),
          tabBarColor: const Color(0xff300469),
          onTabItemSelected: (int value) {
            setState(() {
              _tabController!.index = value;
            });
          },
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
          controller: _tabController,
          // ignore: prefer_const_literals_to_create_immutables
          children:[
            DefaultTabController(
               length: 3,
              child: SafeArea(
                child: Scaffold(
                    key: rajukey,
                    drawer: DrawerClass(),
                    body: Column(
                    children: [
                      // **** start drawer creation *****
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
                      // **** end drawer creation *****

                      // **** start banner creation *****
                      Image.asset("assets/images/group.png"),
                      // **** end banner creation *****

                      // **** start tab creation *****
                      Container(
                        height: 40,
                        child: TabBar(
                          indicatorColor: Color(0xffFF3D00),
                          labelColor: Color(0xffFF3D00), //<-- selected text color
                          unselectedLabelColor: Color(0xff4B1795), //<-- Unselected text color
                          tabs: [
                            Text("Contest",style: TextStyle(fontSize: 16),),
                            Text("Tournament",style: TextStyle(fontSize: 16),),
                            Text("Complete",style: TextStyle(fontSize: 16
                            ),),
                          ],
                        ),
                      ),
                      // **** end tab creation *****

                      // **** start tabBar_view Content creation *****
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
                                                                          GestureDetector(
                                                                            onTap: (){
                                                                              Get.to(ContestDetails());
                                                                            },
                                                                            child: Text("Play & Win: ₹ 5000",style: TextStyle(
                                                                                fontWeight: FontWeight.bold,color: Color(0xffD93400)
                                                                            ),),
                                                                          ),
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
                                                              child: ElevatedButton(onPressed: (){
                                                                Get.to(ContestDetails());
                                                              }, child: Text("Join Now",style: TextStyle(
                                                                  fontSize: 10
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
        ),
            Scaffold(
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
        ),
            Scaffold(
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

        ),
            Scaffold(
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
                    //fhsdhfdsjkfjkjsdfjsdfksd HHHHHHHHHHHHHHHHHH
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
            ),
          ],
        ),
      ),
    );
  }
}
