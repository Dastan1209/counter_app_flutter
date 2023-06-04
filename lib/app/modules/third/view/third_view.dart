import 'package:counter_app_2/app/modules/first/controller/first_controller.dart';
import 'package:flutter/material.dart';

import 'package:counter_app_2/app/modules/first/view/first_view.dart';
import 'package:get/get.dart';

class ThirdView extends StatelessWidget {
  ThirdView();
  final _firstController = Get.put<FirstController>(FirstController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page====>${_firstController.san.value}'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.to(
              () => FirstView(),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffAAAAAA).withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 345,
            height: 44,
            child: Center(
              child: Text(
                'Uchunchu bettin Sany: ${_firstController.san.value}',
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
