import 'package:flutter/material.dart';

class MyService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'خدماتي',
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: 50,
        ),
      ),
    );
  }
}
