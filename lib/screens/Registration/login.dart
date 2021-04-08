import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/Home/home.dart';
import './register.dart';
import '../../widgets/mainButton.dart';
import '../../widgets/mainTextField.dart';

class Login extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            width: 1.sw,
            child: Image.asset(
              'assets/lowerBG.png',
              color: Color.fromRGBO(255, 255, 255, .1),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    padding: EdgeInsets.fromLTRB(100.w, 100.h, 100.w, 30.h),
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                Hero(
                  tag: 'mainText',
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w, bottom: 10.h),
                    child: Text('تسجيل الدخول',
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            .copyWith(fontSize: 35.sp)),
                  ),
                ),
                Hero(
                  tag: 'mainLine',
                  child: Container(
                    width: 140.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45.w),
                  child: Column(
                    children: List.generate(
                        2,
                        (i) => Padding(
                              padding: EdgeInsets.only(
                                top: i == 0 ? 34.h : 16.h,
                              ),
                              child: MainTextField(
                                hintText: i == 0 ? 'رقم الهاتف' : 'كلمة المرور',
                                iconPath: i == 0
                                    ? 'assets/icons/phone.png'
                                    : 'assets/icons/lock.png',
                                isObscure: i == 1,
                              ),
                            )),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.w, vertical: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.grey.withOpacity(.5),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'مساعدة',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(
                                    color: Theme.of(context).accentColor,
                                  ),
                            ),
                          )),
                      SizedBox(width: 3.w),
                      Text(
                        'نسيت كلمة المرور؟',
                        style: Theme.of(context).textTheme.headline2.copyWith(
                              color: Color(0xff707070),
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.w, vertical: 10.h),
                  child: Hero(
                    tag: 'button',
                    child: MainButton(
                      onPressed: () => Navigator.pushNamed(context, Home.id),
                      title: 'دخول',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.grey.withOpacity(.5),
                          onTap: () =>
                              Navigator.pushNamed(context, Register.id),
                          child: Text(
                            'إنشاء حساب جديد',
                            style:
                                Theme.of(context).textTheme.headline2.copyWith(
                                      color: Theme.of(context).accentColor,
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 2,
                                    ),
                          )),
                      SizedBox(width: 10.w),
                      Text('لا تمتلك حساب؟',
                          style: Theme.of(context).textTheme.headline2),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 37.w, vertical: 73.h),
                // padding: EdgeInsets.only(top: 73.h, right: 37.w),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    // size: 20.w,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              )),
        ],
      ),
    );
  }
}
