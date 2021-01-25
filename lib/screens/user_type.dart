import 'package:flutter/material.dart';

class UserType extends StatefulWidget {
  static const String id = 'user_type_screen';
  @override
  _UserTypeState createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Column()),
          Image.asset('assets/lowerBG.png',
              color: Color.fromRGBO(255, 255, 255, .1),
              colorBlendMode: BlendMode.modulate),
        ],
      ),
    );
  }
}
