import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyBalance extends StatefulWidget {
  const MyBalance({super.key});

  @override
  State<MyBalance> createState() => _MyBalanceState();
}

class _MyBalanceState extends State<MyBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Balance"),
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
                height: Get.height*0.58,
                width: Get.width*0.93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.white
                ),
                child: Padding(
                  padding:  EdgeInsets.all(13),
                  child: Column(
                    children: [
                      Image.asset("assets/images/wallet_balance.png",width: Get.width*0.2,),
                      Text("Total Balance",style: TextStyle(
                        fontWeight: FontWeight.w700,fontSize: 18,

                      ),),
                      SizedBox(height: Get.height*0.02,),
                      Text("₹30",style: TextStyle(
                        fontWeight: FontWeight.w700,fontSize: 39,

                      ),),
                      SizedBox(height: Get.height*0.02,),
                      Divider(
                        indent: 1,
                        endIndent: 1,
                        thickness: 0.2,
                        color: Colors.black,
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Diposits",style: TextStyle(
                                fontWeight: FontWeight.w500,fontSize: 19,
                                color: Colors.grey[500]
                            ),),
                              Text("₹30",style: TextStyle(
                                fontWeight: FontWeight.w700,fontSize: 19,

                              ),),],
                          ),
                          ElevatedButton(onPressed: (){}, child: Text("Add Cash"),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(23)
                                )
                            ),)
                        ],
                      ),
                      SizedBox(height: Get.height*0.02,),
                      Divider(
                        indent: 1,
                        endIndent: 1,
                        thickness: 0.2,
                        color: Colors.black,
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Winning",style: TextStyle(
                                  fontWeight: FontWeight.w500,fontSize: 19,
                                  color: Colors.grey[500]
                              ),),
                              Text("₹30",style: TextStyle(
                                fontWeight: FontWeight.w700,fontSize: 19,

                              ),),],
                          ),
                          ElevatedButton(onPressed: (){}, child: Text("Withdraw"),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(23)
                                )
                            ),)
                        ],
                      ),
                      SizedBox(height: Get.height*0.02,),
                      Divider(
                        indent: 1,
                        endIndent: 1,
                        thickness: 0.2,
                        color: Colors.black,
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Diposits",style: TextStyle(
                                  fontWeight: FontWeight.w500,fontSize: 19,
                                  color: Colors.grey[500]
                              ),),
                              Text("₹30",style: TextStyle(
                                fontWeight: FontWeight.w700,fontSize: 19,

                              ),),],
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined,size: 20,))
                        ],
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
