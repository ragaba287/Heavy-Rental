import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/cubit.dart';
import 'package:flutter_application_1/cubit/states.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/Registration/login.dart';
import './Registration/register.dart';
import '../widgets/userTypeCon.dart';
import '../widgets/mainWidgets/mainButton.dart';

class UserType extends StatelessWidget {
  static const String id = 'user_type_screen';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HeavyCubit, HeavyStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          var cubit = HeavyCubit.get(context);

          return Scaffold(
            body: Stack(
              children: [
                Hero(
                  tag: 'lowerBG',
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      lowerBackgroundPath,
                      color: Color.fromRGBO(255, 255, 255, .1),
                      colorBlendMode: BlendMode.modulate,
                      height: 230.h,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'logo',
                      child: Container(
                        padding: EdgeInsets.fromLTRB(100.w, 80.h, 100.w, 40.h),
                        child: Image.asset(logoPath),
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          cubit.userTypes.length,
                          (index) => UserTypeContainer(index),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      ),
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
                      height: 20.h,
                    ),
                    Hero(
                      tag: 'button',
                      child: MainButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(height: 99.h),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
