import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ReferralCode extends StatefulWidget {
  const ReferralCode({super.key});

  @override
  State<ReferralCode> createState() => _ReferralCodeState();
}

class _ReferralCodeState extends State<ReferralCode> {
  bool is_checked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/bgSplash.png')
              ),
            ),
          ),
          Positioned(
            child:
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png',scale: 2,),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    Text("W E L C O M E", style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.white,fontSize: 21),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.63,
                      child: TextFormField(
                        style: TextStyle(color: Colors.black,fontSize: 15),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: 'Enter Your Mobile Number',
                            contentPadding: EdgeInsets.only(left: 50),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                                borderRadius: BorderRadius.circular(24)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: BorderSide(
                                    color: Colors.white
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.63,
                      child:
                      TextFormField(
                        style: TextStyle(color: Colors.black,fontSize: 15),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: 'Enter Referral Code',
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            contentPadding: EdgeInsets.only(left: 50),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                                borderRadius: BorderRadius.circular(24)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: BorderSide(
                                    color: Colors.white
                                )
                            )
                        ),
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.39,
                      height: MediaQuery.of(context).size.height*0.048,
                      child: ElevatedButton(onPressed: (){
                      }, child: Text("Continue"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff300469),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)
                            )
                        ),),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(value: is_checked, onChanged: (val){
                          setState(() {
                            is_checked = val!;
                          });
                        }),
                        Text("I agree to the ",
                          style: TextStyle(fontSize: 10,color: Colors.white),),
                        Text("Terms & Conditions",
                          style: TextStyle(fontSize: 10,color: Color(0xff54FF00),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff54FF00)),),
                        Text(" &",
                          style: TextStyle(fontSize: 10,color: Colors.white),),
                        Text(" Privacy Policy",
                          style: TextStyle(fontSize: 10,color: Color(0xff54FF00),
                              decorationColor: Color(0xff54FF00),
                              decoration: TextDecoration.underline),),

                      ],
                    )
                  ],
                )),
          )
        ],
      )
      ,
    );
  }
}
