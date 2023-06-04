// ignore_for_file: unused_element

import 'package:counter_app_2/app/modules/first/view/first_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    CounterApp(),
  );
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstView(),
    );
  }
}
