import 'dart:developer';

import 'package:counter_app_2/app/modules/first/controller/first_controller.dart';
import 'package:counter_app_2/app/modules/second/view/second_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstView extends StatelessWidget {
  FirstView({super.key});
  final _firstController = Get.put<FirstController>(FirstController());

  @override
  // ignore: override_on_non_overriding_member

  Widget build(BuildContext context) {
    log('buildCount ====> ${_firstController.buildCount.value++}');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Counter App',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: InkWell(
              onTap: () {
                Get.to(
                  () => SecondView(),
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
                  child: Obx(
                    () => Text(
                      'San:  ${_firstController.san.value}',
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
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => _firstController.kemit(),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff0D61AE),
                  ),
                  child: Center(
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 100,
                        height: 0.65,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: () => _firstController.koshuu(),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff0D61AE),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 70,
                        height: 0.77,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
