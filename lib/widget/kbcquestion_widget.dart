import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class KbcQuestionWidget extends StatefulWidget {
  const KbcQuestionWidget({super.key});

  @override
  State<KbcQuestionWidget> createState() => _KbcQuestionWidgetState();
}

class _KbcQuestionWidgetState extends State<KbcQuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.057,
      width: Get.width * 0.9,
      decoration: BoxDecoration(
          color: Color(0xff300469),
          borderRadius: BorderRadius.circular(19)
      ),
      child: Row(
        children: [
          Center(
            child:
            Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    height: Get.height * 0.026,
                    width: Get.width * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(19)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 14, top: 2.5),
                    height: Get.height * 0.02,
                    width: Get.width * 0.04,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(19)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 48.0, top: 1),
                    child: Text("Dr Rajendra Prasad", style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,
                        fontSize: 14
                    ),),
                  )
                ]
            ),
          ),
        ],
      ),
    );
  }
}
