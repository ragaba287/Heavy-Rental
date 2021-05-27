import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/cubit.dart';
import 'package:flutter_application_1/cubit/states.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppBar extends StatefulWidget {
  MainAppBar({this.isBack = false});

  final bool isBack;
  @override
  _MainAppBarState createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  bool isNotif = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HeavyCubit, HeavyStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HeavyCubit.get(context);
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).accentColor,
          flexibleSpace: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: 25.h, left: 20.w, right: widget.isBack ? 15.w : 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.h),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            print('notfication');
                            setState(() {
                              isNotif = !isNotif;
                            });
                          },
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5.h),
                                child: Image.asset('assets/icons/bell.png'),
                              ),
                              Positioned(
                                right: 5.w,
                                top: 1.h,
                                child: Visibility(
                                  visible: isNotif,
                                  child: Container(
                                    height: 15.h,
                                    width: 15.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Theme.of(context).accentColor,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          child: Padding(
                            padding: EdgeInsets.all(5.h),
                            child: Image.asset('assets/icons/settings.png'),
                          ),
                          onTap: () {
                            print('settings');
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0, right: 30),
                    child: Text(
                      cubit.bottomItems[cubit.currentIndex]['label'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  widget.isBack
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 15),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ))
                      : Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.white.withOpacity(.8),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  offset: Offset(0, 2))
                            ]),
                            child: Image.asset(
                              logoPath,
                              height: 40.h,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        );
      },
    );
  }
}
