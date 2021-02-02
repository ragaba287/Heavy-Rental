import 'dart:math';

import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../widgets/categoryItem.dart';
import '../../widgets/itemCon.dart';
import '../../widgets/mainFAB.dart';
import '../../widgets/mainAppBar.dart';

class Home extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MainAppBar(title: 'الرئيسية'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  'أهلا بك , مصباح أشرف',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x10F79422),
                        offset: Offset(0, 6),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: TextField(
                    style: TextStyle(color: mainColor, fontSize: 18),
                    cursorColor: mainColor,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Image.asset(
                          'assets/icons/profile.png',
                          scale: 8,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'assets/icons/profile.png',
                          scale: 8,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintStyle: TextStyle(
                          color: Colors.black.withOpacity(.3), fontSize: 18),
                      hintText: '.... إبحث',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  itemBuilder: (ctx, index) {
                    return CatItem();
                  },
                  itemCount: 10,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'شاهد الكل',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Text(
                      'اخر الاضافات',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 3,
                        decorationColor: mainColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  itemBuilder: (ctx, index) {
                    Random random = new Random();
                    return ItemCon(
                      itemPrice: random.nextInt(1000),
                      itemRate: random.nextInt(6),
                    );
                  },
                  itemCount: 10,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'شاهد الكل',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Text(
                      'اخر الاضافات',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 3,
                        decorationColor: mainColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  itemBuilder: (ctx, index) {
                    Random random = new Random();
                    return ItemCon(
                      itemPrice: random.nextInt(1000),
                      itemRate: random.nextInt(6),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
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
                        print(currentItem);
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
                      });
                    },
                    textColor: currentItem == 0 ? mainColor : Colors.grey,
                  ),
                ],
              ),
            ),
          )),
      floatingActionButton: Transform.translate(
        offset: Offset(0, -20),
        child: MainFAB(),
      ),
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
