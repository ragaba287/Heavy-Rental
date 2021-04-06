import 'package:flutter/material.dart';
import '../screens/user_type.dart';
import '../widgets/logo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                child: Image.asset(
                  'assets/lowerBG.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40.w, 180.h, 39.w, 0),
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
