import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pgocontest/views/auth/otp_verify.dart';

import '../screen/privacy.dart';
import '../screen/term_and_condition.dart';
import 'have_reffer_code.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {

  final phonekey = GlobalKey<FormState>();
  final phoneController = TextEditingController();


  bool is_checked = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phoneController.dispose();
  }
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
                      child:
                      Form(
                        key: phonekey,
                        child: TextFormField(
                          validator: (val){
                            if(val!.isEmpty){
                              return 'Enter Mobile Number';
                            }
                            return null;
                          },
                          controller: phoneController,
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
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    GestureDetector(
                      onTap: (){
                       Get.to(ReferralCode());
                      },
                      child: Text("Have a Referal Code?",style: TextStyle(
                        color: Colors.grey[200],
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.grey[300], // optional
                        decorationThickness: 1, // optional
                        decorationStyle: TextDecorationStyle.solid, ),),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.39,
                      height: MediaQuery.of(context).size.height*0.048,
                      child: ElevatedButton(onPressed: (){
                        if(phonekey.currentState!.validate()){
                          Get.to(OtpVerification(verificationId: ''));
                        }
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
                        GestureDetector(
                          onTap: (){
                            Get.to(TermAndConditions());
                          },
                          child: Text("Terms & Conditions",
                            style: TextStyle(fontSize: 10,color: Color(0xff54FF00),
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff54FF00)),),
                        ),
                        Text(" &",
                          style: TextStyle(fontSize: 10,color: Colors.white),),
                        GestureDetector(
                          onTap: (){
                            Get.to(PrivacyPolicy());
                          },
                          child: Text(" Privacy Policy",
                            style: TextStyle(fontSize: 10,color: Color(0xff54FF00),
                                decorationColor: Color(0xff54FF00),
                                decoration: TextDecoration.underline),),
                        ),

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
