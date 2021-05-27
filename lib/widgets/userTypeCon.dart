import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/cubit.dart';
import 'package:flutter_application_1/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserTypeContainer extends StatelessWidget {
  UserTypeContainer(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HeavyCubit, HeavyStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        var cubit = HeavyCubit.get(context);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 230.w,
                decoration: BoxDecoration(
                    color: Color(0xffF7FAFF),
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: Colors.white, width: 5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: .1,
                        blurRadius: 15,
                        // offset: Offset(0, 3),
                      )
                    ]),
                child: Material(
                  borderRadius: BorderRadius.circular(20.r),
                  child: InkWell(
                    onTap: () => cubit.onUserTypeContainerTap(index),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 55.w, vertical: 14.h),
                      child: Column(children: [
                        Image.asset(
                          cubit.userTypes[index]['typeImage'],
                          height: 80.h,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          cubit.userTypes[index]['type'],
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -10,
                left: -5,
                child: Visibility(
                  visible: cubit.currentType == index,
                  child: Container(
                    height: 33.h,
                    width: 33.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: Theme.of(context).accentColor,
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 20.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
