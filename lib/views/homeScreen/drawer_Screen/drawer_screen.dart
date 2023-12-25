import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pgocontest/views/auth/phone_login.dart';
import 'dart:io';
import 'dart:async';
import '../../screen/privacy.dart';
import '../../screen/term_and_condition.dart';
import '../helpSelf/helpself.dart';
import '../how_to_play_rules/how_toPlay.dart';
import '../myContest_page/my_contest_screeen.dart';
import '../mytransaction_page/my_transactionsScreen.dart';
import '../profileScreen/profileFirst.dart';
import '../referandearnwithThreeScreens/complete_screen.dart';
import '../referandearnwithThreeScreens/referandEarned.dart';
import '../wallet_Details/insufficient_wallet.dart';
import '../wallet_Details/wallet_balance.dart';

class DrawerClass extends StatefulWidget {
  const DrawerClass({super.key});

  @override
  State<DrawerClass> createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  File? gallery;
  Future pickGallery() async{
    try{
      final gallery = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(gallery == null)return;
      final imageTemporary = File(gallery.path);
      setState(()=>this.gallery = imageTemporary);
    }on PlatformException catch(e){
      print('Failed to pick image: $e');
    }

  }

  File? camera;
  Future pickCamera() async{
    await ImagePicker().pickImage(source: ImageSource.camera);

  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child:Stack(
                children:[
                  Image.asset("assets/images/drawerbgHead.png"),
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                  Positioned(
                    right: 30,
                    top: 30,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(53),
                          border: Border.all(
                              width: 4,color: Colors.white
                          )
                      ),
                      child: InkWell(
                        onTap: (){
                          showDialog(context: context, builder: (BuildContext context) {
                            return
                              AlertDialog(
                                backgroundColor: Colors.transparent,
                                content: Container(
                                  width: MediaQuery.sizeOf(context).width,
                                  height: 150, // Set the desired height here
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 15,),
                                      Padding(
                                        padding: EdgeInsets.only(left: 60),
                                        child: Text(
                                          "What's your choice",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 90,
                                                color: Colors.black,
                                                child: TextButton(
                                                  child: Text(
                                                    'Gallery',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  onPressed:()=>pickGallery(),
                                                ),
                                              ),
                                              Container(
                                                height: 40,
                                                width: 90,
                                                color: Colors.white,
                                                child: TextButton(
                                                  child: Text(
                                                    'Camera',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  onPressed: ()=>pickCamera(),
                                                ),
                                              ),

                                            ],
                                          ),
                                          SizedBox(height: 11,),
                                          Container(
                                            height: 40,
                                            width: 90,
                                            color: Colors.red[900],
                                            child: TextButton(
                                              child: Text(
                                                'Close Tab',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              onPressed: (){
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                          },);
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/profile2.png",),maxRadius: 35,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 30,
                      top: 80,
                      child:
                      CircleAvatar(
                        radius: 12,
                        child: IconButton(
                          onPressed: () {
                            showDialog(context: context, builder: (BuildContext context) {
                              return
                                AlertDialog(
                                  backgroundColor: Colors.transparent,
                                  content: Container(
                                    width: MediaQuery.sizeOf(context).width,
                                    height: 150, // Set the desired height here
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 15,),
                                        Padding(
                                          padding: EdgeInsets.only(left: 60),
                                          child: Text(
                                            "What's your choice",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 16),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  color: Colors.black,
                                                  child: TextButton(
                                                    child: Text(
                                                      'Gallery',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    onPressed:()=>pickGallery(),
                                                  ),
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 90,
                                                  color: Colors.white,
                                                  child: TextButton(
                                                    child: Text(
                                                      'Camera',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    onPressed: ()=>pickCamera(),
                                                  ),
                                                ),

                                              ],
                                            ),
                                            SizedBox(height: 11,),
                                            Container(
                                              height: 40,
                                              width: 90,
                                              color: Colors.red[900],
                                              child: TextButton(
                                                child: Text(
                                                  'Close Tab',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                onPressed: (){
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                            },);
                          },
                          icon: Icon(Icons.camera_alt, size: 14, color: Colors.white),
                          padding: EdgeInsets.zero,
                        ),
                      )
                  ),
                  Positioned(
                    top: 39,
                    left: 30,
                    child: Column(
                      children: [
                        Text("Guest User",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 17
                        ),),
                        Text("+91 8887697854",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 9
                        ),),

                      ],
                    ),
                  ),
                ]
            ),
          ),
          ListTile(
            onTap: (){
              Get.to(ProfileFill());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/profile_image.png"),
            title: Text("My Profile"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          ListTile(
            onTap: (){
              Get.to(MyContestPage());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/drawer_contest.png"),
            title: Text("My Contest"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          ListTile(
            onTap: (){
              Get.to(WalletBalance());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/wallet_balance.png"),
            title: Text("My Wallet"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          ListTile(
            onTap: (){
              Get.to(MyTransactionPage());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/transaction.png"),
            title: Text("My Transaction"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          ListTile(
            onTap: (){
              Get.to(ProfileFill());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/account.png"),
            title: Text("Account Details"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          ListTile(
            onTap: (){
              Get.to(ReferAndEarned());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/referdrawer.png"),
            title: Text("Refer and Earn"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          ListTile(
            onTap: (){
              Get.to(HowToPlay());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/videodrawer.png"),
            title: Text("How to Play"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          ListTile(
            onTap: (){
              Get.to(PrivacyPolicy());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/privacy.png"),
            title: Text("Privacy Policy"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          ListTile(
            onTap: (){
              Get.to(TermAndConditions());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/termcon.png"),
            title: Text("Term and Conditions"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          ListTile(
            onTap: (){
              Get.to(HelpAndSupport());
            },
            minVerticalPadding:17,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            leading: Image.asset("assets/images/help.png"),
            title: Text("Help & Support"),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
          ),
          SizedBox(
            height: Get.height*0.015,
          ),
          GestureDetector(
            onTap: (){
              Get.to(PhoneLogin());
            },
            child: Container(
              height: MediaQuery.sizeOf(context).height*0.055,
              width: MediaQuery.sizeOf(context).width*0.5,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logout.png"),
                  Text("Logout")
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}