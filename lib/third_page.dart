import 'package:counter_app_2/home_page.dart';
import 'package:counter_app_2/second_page.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage(this.number);
  final String number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page====>$number'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => HomePage(
                    // sanAlypkel: san,
                    )),
              ),
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
                'Uchunchu bettin Sany: $number  ',
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
