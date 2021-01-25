import 'package:flutter/material.dart';
import '../widgets/logo.dart';

class Splash extends StatefulWidget {
  static const String id = 'splash_screen';
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 250, 50, 0),
              child: LogoFull(),
            ),
          ),
          Image.asset('assets/lowerBG.png'),
        ],
      ),
    );
  }
}
