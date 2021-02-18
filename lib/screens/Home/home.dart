import 'package:flutter/material.dart';
import '../../screens/Home/account.dart';
import '../../screens/Home/dash.dart';
import '../../screens/Home/myService.dart';
import '../../screens/Home/request.dart';
import '../../utils/constants.dart';
import '../../widgets/mainFAB.dart';
import '../../widgets/mainAppBar.dart';

class Home extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentItem = 0;
  String appTitle = 'الرئيسية';
  List<Widget> bodyWidget = [
    Dashboard(),
    Request(),
    MyService(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MainAppBar(title: appTitle),
      ),
      body: bodyWidget[currentItem],
      bottomNavigationBar: BottomAppBar(
          // shape:
          notchMargin: 10,
          child: Transform.translate(
            offset: Offset(0, -20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.4),
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(0, 2),
                    ),
                  ]),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  navItem(
                    label: 'حسابي',
                    imagePath: 'assets/icons/profileOutline.png',
                    onPressed: () {
                      setState(() {
                        currentItem = 3;
                        appTitle = 'حسابي';
                      });
                    },
                    textColor: currentItem == 3 ? mainColor : Colors.grey,
                  ),
                  navItem(
                    label: 'خدماتي',
                    imagePath: 'assets/icons/mic.png',
                    onPressed: () {
                      setState(() {
                        currentItem = 2;
                        appTitle = 'خدماتي';
                      });
                    },
                    textColor: currentItem == 2 ? mainColor : Colors.grey,
                  ),
                  SizedBox(width: 70),
                  navItem(
                    label: 'أطلب',
                    imagePath: 'assets/icons/request.png',
                    onPressed: () {
                      setState(() {
                        currentItem = 1;
                        appTitle = 'نوع الخدمة';
                      });
                    },
                    textColor: currentItem == 1 ? mainColor : Colors.grey,
                  ),
                  navItem(
                    label: 'الرئيسية',
                    imagePath: 'assets/icons/home.png',
                    padding: 0,
                    onPressed: () {
                      setState(() {
                        currentItem = 0;
                        appTitle = 'الرئيسية';
                      });
                    },
                    textColor: currentItem == 0 ? mainColor : Colors.grey,
                  ),
                ],
              ),
            ),
          )),
      floatingActionButton: MainFAB(onTap: () {
        setState(() {
          currentItem = 1;
          appTitle = 'نوع الخدمة';
        });
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget navItem({
    String imagePath = 'assets/icons/profile.png',
    Function onPressed,
    String label = 'الرئيسية',
    double padding = 8,
    Color textColor = Colors.grey,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
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
              imagePath,
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: padding),
              child: Text(
                label,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
