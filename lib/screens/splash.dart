import 'package:flutter/material.dart';
import '../screens/user_type.dart';
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
      body: InkWell(
        onTap: () => Navigator.of(context).pushNamed(UserType.id),
        child: Stack(
          children: [
            Hero(
              tag: 'lowerBG',
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/lowerBG.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 250, 50, 0),
              child: Hero(
                tag: 'logo',
                child: LogoFull(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
