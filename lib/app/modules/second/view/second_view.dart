import 'package:counter_app_2/app/modules/third/view/third_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../first/controller/first_controller.dart';

class SecondView extends StatelessWidget {
  SecondView();
  final _firstController = Get.put<FirstController>(FirstController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: InkWell(
        onTap: () {
          Get.to(() => ThirdView());
        },
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffAAAAAA).withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 345,
            height: 44,
            child: Center(
              child: Text(
                'San: ${_firstController.san.value} ',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
