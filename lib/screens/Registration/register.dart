import 'package:flutter/material.dart';
import './login.dart';
import '../../widgets/mainButton.dart';
import '../../widgets/mainTextField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends StatefulWidget {
  static const String id = 'reg_screen';
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  List textField = [
    {'hintText': 'اسم الشركة', 'iconPath': 'assets/icons/profile.png'},
    {'hintText': 'كلمة المرور', 'iconPath': 'assets/icons/lock.png'},
    {'hintText': 'تأكيد كلمة المرور', 'iconPath': 'assets/icons/lock.png'},
    {'hintText': 'رقم السجل التجاري', 'iconPath': 'assets/icons/note.png'},
    {'hintText': 'رقم الهاتف', 'iconPath': 'assets/icons/phone.png'},
    {'hintText': 'المدينة', 'iconPath': 'assets/icons/location.png'},
  ];

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
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    padding: EdgeInsets.fromLTRB(100.w, 111.h, 100.w, 30.h),
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                Hero(
                  tag: 'mainText',
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w, bottom: 10.h),
                    child: Text(
                      'التسجيل',
                      style: Theme.of(context).textTheme.headline1.copyWith(
                            fontSize: 35.sp,
                          ),
                    ),
                  ),
                ),
                Hero(
                  tag: 'mainLine',
                  child: Container(
                    width: 100.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
                  child: Text(
                    'إنشاء حساب جديد كمقدم خدمة',
                    style: Theme.of(context).textTheme.headline2.copyWith(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: List.generate(
                        6,
                        (i) => Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: MainTextField(
                                hintText: textField[i]['hintText'],
                                iconPath: textField[i]['iconPath'],
                                isObscure: i == 1 || i == 2,
                              ),
                            )),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.w, vertical: 10.h),
                  child: Hero(
                    tag: 'button',
                    child: MainButton(
                      onPressed: () {},
                      title: 'التالي',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.grey.withOpacity(.5),
                          onTap: () => Navigator.pushNamed(context, Login.id),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'تسجيل دخول',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(
                                    color: Theme.of(context).accentColor,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 2,
                                  ),
                            ),
                          )),
                      SizedBox(width: 10),
                      Text('هل تمتلك حساب؟',
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () => Navigator.pop(context),
                ),
              )),
        ],
      ),
    );
  }
}
