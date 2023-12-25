import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyTransactionPage extends StatefulWidget {
  const MyTransactionPage({super.key});

  @override
  State<MyTransactionPage> createState() => _MyTransactionPageState();
}

class _MyTransactionPageState extends State<MyTransactionPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Transaction"),
          leading: IconButton(onPressed: (){
          Navigator.pop(context);},
            icon: Icon(Icons.arrow_back),),
          centerTitle: true
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              child: TabBar(
                indicatorColor: Color(0xffFF3D00),
                labelColor: Color(0xffFF3D00), //<-- selected text color
                unselectedLabelColor: Color(0xff4B1795), //<-- Unselected text color
                tabs: [
                  Text("Diposit",style: TextStyle(fontSize: 18),),
                  Text("Withdraw",style: TextStyle(fontSize: 18),),
                ],
              ),
            ),
            // ************ end tab creation *************

            // ************ start tabBar_view Content creation *************
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TabBarView(
                    children: [
                      ListView.builder(
                      itemCount: 40,
                      itemBuilder: (BuildContext context,int index){
                        return ListTile(
                          title:
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Diposit",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text("18:12")],
                              ),
                              SizedBox(width: Get.width*0.19,),
                              Text("2 August 2023")
                            ],
                          ),

                          trailing: Column(
                            children: [
                              Text("₹30"),
                              Text("Failed",style: TextStyle(
                                  fontWeight: FontWeight.bold,color: Colors.red
                              ),),
                            ],
                          ),
                        );
                      }),

                    Container(),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
