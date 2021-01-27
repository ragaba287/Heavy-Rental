import 'package:flutter/material.dart';
import './register.dart';
import '../../utils/constants.dart';
import '../../widgets/logo.dart';
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
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(120, 130, 120, 30),
                child: Hero(
                  tag: 'logo',
                  child: LogoFull(isFull: false),
                ),
              ),
              Hero(
                tag: 'mainText',
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Text('تسجيل الدخول',
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 35)),
                ),
              ),
              Hero(
                tag: 'mainLine',
                child: Container(
                  width: 220,
                  height: 8,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: List.generate(
                      2,
                      (i) => Padding(
                            padding: EdgeInsets.only(
                              top: i == 0 ? 50 : 30,
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
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
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
                            style:
                                Theme.of(context).textTheme.headline2.copyWith(
                                      color: mainColor,
                                    ),
                          ),
                        )),
                    SizedBox(width: 3),
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
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 5),
                child: Hero(
                  tag: 'button',
                  child: MainButton(
                    onPressed: () {},
                    title: 'دخول',
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.grey.withOpacity(.5),
                      onTap: () => Navigator.pushNamed(context, Register.id),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'إنشاء حساب جديد',
                          style: Theme.of(context).textTheme.headline2.copyWith(
                                color: mainColor,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                              ),
                        ),
                      )),
                  SizedBox(width: 10),
                  Text('لا تمتلك حساب؟',
                      style: Theme.of(context).textTheme.headline2),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
