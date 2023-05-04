import 'package:counter_app_2/third_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int san;
  const SecondPage({this.san});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page $san'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => ThirdPage(san.toString()))));
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
                'San: $san ',
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
