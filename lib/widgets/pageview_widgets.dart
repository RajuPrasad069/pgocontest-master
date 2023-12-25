import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/auth/phone_login.dart';
class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {




  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
  Widget row(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        currentPage==0?
        Container(
          height: 13,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.deepPurple
          ),
        ):
        Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffBB1EAB)
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.01,),
        currentPage==1?
        Container(
          height: 13,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.deepPurple
          ),
        ):
        Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffBB1EAB)
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.01,),
        currentPage==2?
        Container(
          height: 13,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.deepPurple
          ),
        ):
        Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffBB1EAB)
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.01,),
        currentPage==3?
        Container(
          height: 13,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.deepPurple
          ),
        ):
        Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffBB1EAB)
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: pageController,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/bgSplash.png')
                      )
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child:
                    Container(
                      height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(93)
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 38.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.06,
                            ),
                            Text("JOIN CONTEST",style: TextStyle(
                                fontSize: 34,fontWeight: FontWeight.bold,color:
                            Colors.deepPurple[800]
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            Text("play as many  contests and tournamnets to \ncomplete with the users worldwide."),
                            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                            Text("Get Started",style: TextStyle(
                                fontSize: 25,fontWeight: FontWeight.bold,color:
                            Colors.deepPurple[800]
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                            Row(
                              children: [
                                row(),
                                SizedBox(width: MediaQuery.of(context).size.width*0.41,),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width*0.24,
                                    child: ElevatedButton(onPressed: (){
                                      pageController.nextPage(duration: Duration(microseconds: 1000),
                                          curve: Curves.bounceInOut);
                                    }, child: Text("Next")
                                      ,style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(18)
                                          )
                                      ),))

                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.4,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      ),
                      child: Image.asset("assets/images/joincontest.png"),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/bgSplash.png')
                      )
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child:
                    Container(
                      height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(93)
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 38.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.06,
                            ),
                            Text("EARN CONTEST",style: TextStyle(
                                fontSize: 34,fontWeight: FontWeight.bold,color:
                            Colors.deepPurple[800]
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            Text("Each contest and tournaments will give you a chance \nto earn your winnings"),
                            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                            Text("Get Started",style: TextStyle(
                                fontSize: 25,fontWeight: FontWeight.bold,color:
                            Colors.deepPurple[800]
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                            Row(
                              children: [
                                row(),
                                SizedBox(width: MediaQuery.of(context).size.width*0.41,),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width*0.24,
                                    child: ElevatedButton(onPressed: (){
                                      pageController.nextPage(duration: Duration(microseconds: 1000),
                                          curve: Curves.bounceInOut);
                                    }, child: Text("Next"),
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(17)
                                          )
                                      ),))

                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 48.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.4,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      ),
                      child: Image.asset("assets/images/earn.png"),
                    ),
                  ),
                )

              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/bgSplash.png')
                      )
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child:
                    Container(
                      height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(93)
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 38.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.06,
                            ),
                            Text("PRIVATE CONTEST",style: TextStyle(
                                fontSize: 34,fontWeight: FontWeight.bold,color:
                            Colors.deepPurple[800]
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            Text("You can create your own private contest and share \n"
                                "with a group of people to complete."),
                            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                            Text("Get Started",style: TextStyle(
                                fontSize: 25,fontWeight: FontWeight.bold,color:
                            Colors.deepPurple[800]
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                            Row(
                              children: [
                                row(),
                                SizedBox(width: MediaQuery.of(context).size.width*0.41,),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width*0.24,
                                    child: ElevatedButton(onPressed: (){
                                      pageController.nextPage(duration: Duration(microseconds: 1000),
                                          curve: Curves.bounceIn);
                                    }, child: Text("Next"),
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(17)
                                          )
                                      ),
                                    )
                                )

                              ],
                            ),

                          ],
                        ),
                      ),
                    )
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 88.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.33,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      ),
                      child: Image.asset("assets/images/private.png"),
                    ),
                  ),
                )

              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/bgSplash.png')
                      )
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child:
                    Container(
                      height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(93)
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 38.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.06,
                            ),
                            Text("REFER EARN",style: TextStyle(
                                fontSize: 34,fontWeight: FontWeight.bold,color:
                            Colors.deepPurple[800]
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            Text("Keep referring the GoContest App and earn some \nrewards on each referral"),
                            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                            Text("Get Started",style: TextStyle(
                                fontSize: 25,fontWeight: FontWeight.bold,color:
                            Colors.deepPurple[800]
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                            Row(
                              children: [
                                row(),
                                SizedBox(width: MediaQuery.of(context).size.width*0.41,),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width*0.24,
                                    child: ElevatedButton(onPressed: (){
                                      Get.to(PhoneLogin());
                                    }, child: Text("Next"),
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(17)
                                          )
                                      ),
                                    )
                                )

                              ],
                            ),

                          ],
                        ),
                      ),
                    )
                ),
                Positioned(
                  top: 70,left: 30,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.33,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                    ),
                    child: Image.asset("assets/images/refer-earn.png"),
                  ),
                )

              ],
            ),
          ],
          onPageChanged: (index){
            setState(() {
              currentPage = index;
            });
          },
        )
    );
  }
}
