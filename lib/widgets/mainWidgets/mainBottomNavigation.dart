import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/cubit.dart';
import 'package:flutter_application_1/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HeavyCubit, HeavyStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        var cubit = HeavyCubit.get(context);
        return BottomAppBar(
          notchMargin: 10.h,
          child: Transform.translate(
            offset: Offset(0, -10.h),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.4),
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(0, 2),
                    ),
                  ]),
              height: 75.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomItem(cubit: cubit, index: 0),
                    BottomItem(cubit: cubit, index: 1),
                    SizedBox(width: 55.w),
                    BottomItem(cubit: cubit, index: 2),
                    BottomItem(cubit: cubit, index: 3),
                  ]),
            ),
          ),
        );
      },
    );
  }
}

class BottomItem extends StatelessWidget {
  const BottomItem({
    this.index = 1,
    @required this.cubit,
  });

  final HeavyCubit cubit;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => cubit.onChangeBottomNavbar(index),
      child: Container(
        width: 60.w,
        height: 60.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color(0xffF8FCFF),
            border: Border.all(color: Colors.white, width: 3),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 10,
                spreadRadius: 0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              cubit.bottomItems[index]['imagePath'],
              width: 18.w,
            ),
            Padding(
              padding: EdgeInsets.only(right: index == 3 ? 0 : 8.w),
              child: Text(
                cubit.bottomItems[index]['label'],
                style: TextStyle(
                  color: cubit.currentIndex == index
                      ? Theme.of(context).accentColor
                      : Colors.grey,
                  fontSize: cubit.currentIndex == index ? 14.sp : 12.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
