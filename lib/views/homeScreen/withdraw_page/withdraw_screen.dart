import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WithdrawPage extends StatefulWidget {
  const WithdrawPage({super.key});

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Withdraw"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
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
                height: Get.height*0.47,
                width: Get.width*0.93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.white
                ),
                child: Padding(
                  padding:  EdgeInsets.all(23),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter Amount Here',
                          labelText: 'Withdraw Amount',
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
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 10),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset("assets/images/paytm.png",
                              alignment: Alignment.centerLeft,width: 1,),
                          ),
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
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter Amount Here',
                          labelText: 'Paytm Mobile No',
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
                      Container(
                        width: Get.width*0.468,
                        height: Get.height*0.065,
                        decoration: BoxDecoration(
                            color: Color(0xff300469),
                            borderRadius: BorderRadius.circular(23)
                        ),
                        child: Center(
                          child: Text("View Withdraw",style: TextStyle(
                              color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),

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
