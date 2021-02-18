import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';

class MyService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'خدماتي',
        style: TextStyle(
          color: mainColor,
          fontSize: 50,
        ),
      ),
    );
  }
}
