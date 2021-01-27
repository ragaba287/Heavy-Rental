import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/mainAppBar.dart';

class Home extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: MainAppBar(title: 'الرئيسية'),
        ),
        body: Column(
          children: [],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
                color: mainColor,
                cacheColorFilter: true,
              ),
              label: '',
              activeIcon: Icon(Icons.access_alarm),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: '',
            ),
          ],
        ));
  }
}
