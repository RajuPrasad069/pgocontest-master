import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:pgocontest/bottom_navi.dart';


class OtpVerification extends StatefulWidget {

  final String verificationId;
  const OtpVerification({super.key, required this.verificationId});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  int? number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
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
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Text("OTP",style: TextStyle(
                        color: Colors.white,fontSize: 44,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.009,),
                    Text("Enter 4 digit OTP send to $number",style: TextStyle(
                      color: Colors.white,fontSize: 18,
                    ),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: OTPTextField(
                        keyboardType: TextInputType.number,
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 50,
                        style: TextStyle(
                            fontSize: 17,color: Colors.black
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        otpFieldStyle: OtpFieldStyle(
                            backgroundColor: Colors.white,
                            borderColor: Colors.black
                        ),
                        fieldStyle: FieldStyle.box,
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    Text("Resend OTP in | sec",style: TextStyle(
                      color: Colors.white,fontSize: 18,
                    ),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.39,
                      height: MediaQuery.of(context).size.height*0.048,
                      child: ElevatedButton(onPressed: (){
                        Get.to(BottomNav());
                      }, child: Text("Continue"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff300469),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)
                            )
                        ),),
                    ),
                  ],
                )),
          ),

        ],
      ),
    );
  }
}
