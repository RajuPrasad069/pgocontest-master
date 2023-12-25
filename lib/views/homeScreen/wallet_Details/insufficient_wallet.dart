import 'package:flutter/material.dart';

class InsufficientWallet extends StatefulWidget {
  const InsufficientWallet({super.key});

  @override
  State<InsufficientWallet> createState() => _InsufficientWalletState();
}

class _InsufficientWalletState extends State<InsufficientWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Color(0xff2E0467),
              content:
              SizedBox(
                height: MediaQuery.of(context).size.height*0.35,
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Text("Insufficient",
                      style: TextStyle(
                          color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold
                      ),),
                    SizedBox( height: MediaQuery.of(context).size.height*0.001,),
                    Text("Balance : ₹05",
                      style: TextStyle(
                          color: Colors.grey[400],fontSize: 18,fontWeight: FontWeight.bold
                      ),),
                    SizedBox( height: MediaQuery.of(context).size.height*0.02,),
                    Image.asset("assets/images/wallet_balance.png"),
                    SizedBox( height: MediaQuery.of(context).size.height*0.035,),
                    Text("Add ₹10 to your walled to start contest", style: TextStyle(
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
                              child: GestureDetector(
                                onTap: (){
                                  
                                },
                                child: const Text("Continue",
                                  style: TextStyle(
                                      color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 12
                                  ),),
                              ),
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
          child: Text("View Insufficient Wallet",style: TextStyle(
              color: Color(0xff001EE2),fontWeight: FontWeight.bold,
              fontSize: 19,decoration: TextDecoration.underline,decorationColor: Color(0xff001EE2)
          ),),
        ),
      ),
    );
  }
}
