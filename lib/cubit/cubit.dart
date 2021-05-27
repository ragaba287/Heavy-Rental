import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/states.dart';
import 'package:flutter_application_1/screens/Home/account.dart';
import 'package:flutter_application_1/screens/Home/dash.dart';
import 'package:flutter_application_1/screens/Home/myService.dart';
import 'package:flutter_application_1/screens/Home/request.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeavyCubit extends Cubit<HeavyStates> {
  HeavyCubit() : super(AppInitialState());

  static HeavyCubit get(context) => BlocProvider.of(context);

//User Types screen
  List userTypes = [
    {
      'type': 'مستخدم عادي',
      'typeImage': 'assets/normalUser.png',
    },
    {
      'type': 'مقدم خدمة',
      'typeImage': 'assets/serviceUser.png',
    },
  ];

  int currentType = 0;
  void onUserTypeContainerTap(int index) {
    if (index == 0)
      currentType = 0;
    else
      currentType = 1;
    print(currentType == 0 ? 'normal' : 'service');
    emit(UserTypeState());
  }
//

//AppBar

//

//Bottom Navigation

  int currentIndex = 3;

  List<Widget> bodyWidget = [
    Account(),
    MyService(),
    Request(),
    Dashboard(),
  ];

  List bottomItems = [
    {'label': 'حسابي', 'imagePath': 'assets/icons/profileOutline.png'},
    {'label': 'خدماتي', 'imagePath': 'assets/icons/mic.png'},
    {'label': 'أطلب', 'imagePath': 'assets/icons/request.png'},
    {'label': 'الرئيسية', 'imagePath': 'assets/icons/home.png'},
  ];

  void onChangeBottomNavbar(int index) {
    currentIndex = index;
    emit(HeavyBottomNavState());
  }
//

}
