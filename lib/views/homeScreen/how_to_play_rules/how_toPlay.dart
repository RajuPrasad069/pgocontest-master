import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HowToPlay extends StatefulWidget {
  const HowToPlay({super.key});

  @override
  State<HowToPlay> createState() => _HowToPlayState();
}

class _HowToPlayState extends State<HowToPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to Play"),
        centerTitle: true,
        leading: IconButton(onPressed: (){Get.back();},icon: Icon(Icons.arrow_back),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 18),
                  hintText: 'Search Help ?',
                  prefixIcon: Icon(Icons.search,size: 28,color: Colors.grey[600],),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(23)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(23)
                  )
              ),
            ),
            SizedBox(height: Get.height*0.024,),
            Text(
              "FAQ's",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Get.height*0.024,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600,
                        blurRadius: 5,
                        spreadRadius: 0.1
                    )
                  ]
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: Get.height*0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("What is Lorem Ipsum?"),
                    IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  ],
                ),
              ),
            ),
            SizedBox(height: Get.height*0.024,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600,
                        blurRadius: 5,
                        spreadRadius: 0.1
                    )
                  ]
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: Get.height*0.16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width*0.67,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.close), alignment: Alignment.topCenter),
                  ],
                ),
              ),
            ),
            SizedBox(height: Get.height*0.024,),
            Expanded( // Wrap the ListView.builder with an Expanded widget
              child: ListView.builder(
                itemCount: 10, // Replace 10 with your desired item count
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade600,
                              blurRadius: 5,
                              spreadRadius: 0.1
                          )
                        ]
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: Get.height*0.06,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("What is Lorem Ipsum?"),
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}