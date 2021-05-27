import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/cubit.dart';
import 'package:flutter_application_1/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constants.dart';
import './screens/user_type.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HeavyCubit(),
      child: BlocConsumer<HeavyCubit, HeavyStates>(
        listener: (BuildContext context, Object state) {},
        builder: (BuildContext context, state) {
          return ScreenUtilInit(
            designSize: Size(375, 812),
            builder: () {
              return MaterialApp(
                title: 'Heavy Rental',
                theme: ThemeData(
                    accentColor: accentColor,
                    fontFamily: 'cairo',
                    scaffoldBackgroundColor: Color(0xffFFFAFA),
                    textTheme: TextTheme(
                      headline1: TextStyle(
                        color: accentColor,
                        fontSize: 60.sp,
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                      headline2: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                      headline3: TextStyle(
                        color: accentColor,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                      headline4: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                    )),
                home: UserType(),
              );
            },
          );
        },
      ),
    );
  }
}
