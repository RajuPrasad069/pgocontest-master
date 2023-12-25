import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WalletBalance extends StatefulWidget {
  const WalletBalance({super.key});

  @override
  State<WalletBalance> createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet Balance"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body:
      GestureDetector(
        onTap: (){
          showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Color(0xff2E0467),
              content:
              SizedBox(
                height: MediaQuery.of(context).size.height*0.35,
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                    Image.asset("assets/images/wallet_balance.png"),
                    SizedBox( height: MediaQuery.of(context).size.height*0.001,),
                    Text("Wallet Balance",
                    style: TextStyle(
                      color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold
                    ),),
                    SizedBox( height: MediaQuery.of(context).size.height*0.02,),
                    Text("₹30",
                      style: TextStyle(
                          color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold
                      ),),
                    SizedBox( height: MediaQuery.of(context).size.height*0.035,),
                    Text("₹ 10 Will be dedrcted from your wallet", style: TextStyle(
                          color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
              ),
              actions: [
                Center(
                  child:
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration:BoxDecoration(
                                color: Color(0xffFF9000),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: const EdgeInsets.all(14),
                            child: Center(
                              child: const Text("Cancel",
                                style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(

                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration:BoxDecoration(
                                color: Color(0xff971DC3),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: const EdgeInsets.all(14),
                            child: Center(
                              child: const Text("Continue",
                                style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          });
        },
        child: Center(
          child: Text("View Wallet Balance",style: TextStyle(
              color: Color(0xff001EE2),fontWeight: FontWeight.bold,
              fontSize: 19,decoration: TextDecoration.underline,decorationColor: Color(0xff001EE2)
          ),),
        ),
      ),

    );
  }
}
