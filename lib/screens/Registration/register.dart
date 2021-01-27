import 'package:flutter/material.dart';
import './login.dart';
import '../../widgets/mainButton.dart';
import '../../utils/constants.dart';
import '../../widgets/mainTextField.dart';
import '../../widgets/logo.dart';

class Register extends StatefulWidget {
  static const String id = 'reg_screen';
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  List<String> hintText = [
    'اسم الشركة',
    'كلمة المرور',
    'تأكيد كلمة المرور',
    'رقم السجل التجاري ',
    'رقم الهاتف',
    'المدينة',
  ];

  List<String> iconPath = [
    'assets/icons/profile.png',
    'assets/icons/lock.png',
    'assets/icons/lock.png',
    'assets/icons/note.png',
    'assets/icons/phone.png',
    'assets/icons/location.png',
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
                padding: EdgeInsets.fromLTRB(120, 80, 120, 30),
                child: Hero(
                  tag: 'logo',
                  child: LogoFull(isFull: false),
                ),
              ),
              Hero(
                tag: 'mainText',
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    'التسجيل',
                    style: Theme.of(context).textTheme.headline1,
                  ),
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
                padding: const EdgeInsets.only(top: 10.0, bottom: 30),
                child: Text(
                  'إنشاء حساب جديد كمقدم خدمة',
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        color: mainColor,
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
                            padding: const EdgeInsets.only(bottom: 10),
                            child: MainTextField(
                              hintText: hintText[i],
                              iconPath: iconPath[i],
                              isObscure: i == 1 || i == 2,
                            ),
                          )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 120, vertical: 5),
                child: Hero(
                  tag: 'button',
                  child: MainButton(
                    onPressed: () {},
                    title: 'التالي',
                  ),
                ),
              ),
              Row(
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
                          style: Theme.of(context).textTheme.headline2.copyWith(
                                color: mainColor,
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
            ],
          ),
        ],
      ),
    );
  }
}
