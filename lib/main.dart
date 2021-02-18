import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/mainItem.dart';
import './screens/Home/home.dart';
import './screens/Registration/login.dart';
import './utils/constants.dart';
import './screens/Registration/register.dart';
import './screens/user_type.dart';
import './screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heavy Rental',
      theme: ThemeData(
          fontFamily: 'cairo',
          primaryColor: mainColor,
          scaffoldBackgroundColor: Color(0xffFFFAFA),
          textTheme: TextTheme(
            headline1: TextStyle(
              color: mainColor,
              fontSize: 58,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
            headline2: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
            headline3: TextStyle(
              color: mainColor,
              fontSize: 40,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
            headline4: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          )),
      initialRoute: Splash.id,
      routes: {
        Splash.id: (ctx) => Splash(),
        UserType.id: (ctx) => UserType(),
        Register.id: (ctx) => Register(),
        Login.id: (ctx) => Login(),
        Home.id: (ctx) => Home(),
        MainItem.id: (ctx) => MainItem(),
      },
    );
  }
}
