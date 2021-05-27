import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/cubit.dart';
import 'package:flutter_application_1/cubit/states.dart';
import 'package:flutter_application_1/widgets/mainWidgets/mainBottomNavigation.dart';
import 'package:flutter_application_1/widgets/mainWidgets/mainFAB.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/mainWidgets/mainAppBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HeavyCubit, HeavyStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        var cubit = HeavyCubit.get(context);
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(65.h),
            child: MainAppBar(),
          ),
          body: cubit.bodyWidget[cubit.currentIndex],
          bottomNavigationBar: MainBottomNavigation(),
          floatingActionButton: MainFAB(onTap: () {
            // setState(() {
            //   currentItem = 1;
            //   appTitle = 'نوع الخدمة';
            // });
          }),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
