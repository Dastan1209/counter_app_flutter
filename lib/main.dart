// ignore_for_file: unused_element

import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(
    CounterApp(),
  );
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
