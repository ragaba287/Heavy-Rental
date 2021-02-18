import 'dart:ui';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ServiceItem extends StatelessWidget {
  ServiceItem({
    this.itemName = 'مواد بناء',
    this.itemDesc = 'مواد بناء مواد بناء',
    this.itemImage = 'assets/cat1.png',
  });
  final String itemName;
  final String itemDesc;
  final String itemImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(itemName);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.18),
                blurRadius: 18,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      itemName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff707070),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      itemDesc,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff707070),
                        fontSize: 11,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Image.asset(
                      itemImage,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
