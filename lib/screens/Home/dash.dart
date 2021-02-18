import 'dart:math';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../widgets/categoryItem.dart';
import '../../widgets/itemCon.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                    itemPic: 'assets/lowerBG.png',
                  );
                },
                itemCount: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
    );
  }
}
