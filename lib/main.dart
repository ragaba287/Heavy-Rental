import 'package:flutter/material.dart';
import './screens/user_type.dart';
import './screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'cairo',
          primaryColor: Color(0xffF79422),
          scaffoldBackgroundColor: Color(0xffFFFAFA),
          textTheme: TextTheme(
            headline1: TextStyle(
              color: Color(0xffF79422),
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
          )),
      initialRoute: Splash.id,
      routes: {
        Splash.id: (ctx) => Splash(),
        UserType.id: (ctx) => UserType(),
      },
    );
  }
}
