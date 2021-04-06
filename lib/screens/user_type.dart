import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/Registration/login.dart';
import './Registration/register.dart';
import '../widgets/logo.dart';
import '../widgets/userTypeCon.dart';
import '../widgets/mainButton.dart';

class UserType extends StatefulWidget {
  static const String id = 'user_type_screen';
  @override
  _UserTypeState createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'lowerBG',
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/lowerBG.png',
                color: Color.fromRGBO(255, 255, 255, .1),
                colorBlendMode: BlendMode.modulate,
                height: 230.h,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(100.w, 80.h, 100.w, 30.h),
                  child: Hero(
                    tag: 'logo',
                    child: LogoFull(isFull: false),
                  ),
                ),
                UserTypeContainer(),
                SizedBox(height: 20.h),
                UserTypeContainer(
                    type: 'مقدم خدمة', typeImage: 'assets/serviceUser.png'),
                SizedBox(height: 10.h),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, Login.id),
                  child: Text('تمتلك حساب بالفعل',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          .copyWith(color: Color(0xff707070))),
                ),
                Divider(
                  color: Color(0x50707070),
                  thickness: .5,
                  indent: 23.w,
                  endIndent: 23.w,
                  height: 5.h,
                ),
                SizedBox(height: 5.h),
                Hero(
                  tag: 'button',
                  child: MainButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed(Register.id),
                  ),
                ),
                // SizedBox(height: 99.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
