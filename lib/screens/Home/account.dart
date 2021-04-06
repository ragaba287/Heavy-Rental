import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'حسابي',
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: 50,
        ),
      ),
    );
  }
}
