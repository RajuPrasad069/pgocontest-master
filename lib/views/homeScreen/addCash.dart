import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddCash extends StatefulWidget {
  const AddCash({super.key});

  @override
  State<AddCash> createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Cash"),
        centerTitle: true,
      ),
      body: Stack(
          children:[
            Container(
                height: Get.height,
                child: Image.asset("assets/images/referandearnbg.png",fit: BoxFit.fill,)),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child:
              Container(
                height: Get.height*0.37,
                width: Get.width*0.93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.white
                ),
                child: Padding(
                  padding:  EdgeInsets.all(13),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter Amount Here',
                          labelText: 'Enter Amount',
                          labelStyle: TextStyle(fontSize: 16,color: Colors.black),
                          hintStyle: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),
                          contentPadding: EdgeInsets.only(top: 10),
                          prefixIcon: Icon(Icons.currency_rupee,size: 14,color: Colors.grey,),
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
                      SizedBox(height: Get.height*0.04,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child:
                            Container(
                              height: Get.height*0.045,
                              decoration: BoxDecoration(
                                  color: Color(0xff300469),
                                  borderRadius: BorderRadius.circular(23)
                              ),
                              child: Center(
                                child: Text("+  ₹100",style: TextStyle(
                                    color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                          ),
                          SizedBox(width: Get.width*0.034,),
                          Expanded(
                            child: Container(
                              height: Get.height*0.045,
                              decoration: BoxDecoration(
                                  color: Color(0xff300469),
                                  borderRadius: BorderRadius.circular(23)
                              ),
                              child: Center(
                                child: Text("+  ₹300",style: TextStyle(
                                    color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                          ),
                          SizedBox(width: Get.width*0.034,),
                          Expanded(
                            child: Container(
                              height: Get.height*0.045,
                              decoration: BoxDecoration(
                                  color: Color(0xff300469),
                                  borderRadius: BorderRadius.circular(23)
                              ),
                              child: Center(
                                child: Text("+  ₹500",style: TextStyle(
                                    color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height*0.05,),
                      Container(
                        width: Get.width*0.468,
                        height: Get.height*0.065,
                        decoration: BoxDecoration(
                            color: Color(0xff300469),
                            borderRadius: BorderRadius.circular(23)
                        ),
                        child: Center(
                          child: Text("Add Money",style: TextStyle(
                              color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      SizedBox(height: Get.height*0.05,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.security,size: 15,color: Colors.grey,),

                          Text("100% Safe And Secure Payments",style: TextStyle(
                            color: Colors.grey[600]
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),


          ]
      ),
    );
  }
}
