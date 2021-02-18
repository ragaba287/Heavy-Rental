import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'حسابي',
        style: TextStyle(
          color: mainColor,
          fontSize: 50,
        ),
      ),
    );
  }
}
