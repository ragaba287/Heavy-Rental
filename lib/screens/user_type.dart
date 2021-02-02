import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Registration/login.dart';
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
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(120, 100, 120, 30),
                child: Hero(
                  tag: 'logo',
                  child: LogoFull(isFull: false),
                ),
              ),
              UserTypeContainer(),
              SizedBox(height: 25),
              UserTypeContainer(
                  type: 'مقدم خدمة', typeImage: 'assets/serviceUser.png'),
              Spacer(),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, Login.id),
                child: Text('تمتلك حساب بالفعل',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        .copyWith(color: Color(0xff707070))),
              ),
              // FlatButton(
              //   onPressed: () {},
              //   color: Colors.transparent,
              //   child: Text('تمتلك حساب بالفعل',
              //       style: Theme.of(context)
              //           .textTheme
              //           .headline2
              //           .copyWith(color: Color(0xff707070))),
              // ),
              Divider(
                color: Color(0x50707070),
                thickness: 1,
                height: 0,
                endIndent: 40,
                indent: 40,
              ),
              SizedBox(height: 15),
              Hero(
                tag: 'button',
                child: MainButton(
                  onPressed: () => Navigator.of(context).pushNamed(Register.id),
                ),
              ),
              Spacer(flex: 2)
            ],
          ),
        ],
      ),
    );
  }
}
