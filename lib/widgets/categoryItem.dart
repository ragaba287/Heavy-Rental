import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/utils/constants.dart';

class CatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        height: 70,
        width: 80,
        decoration: BoxDecoration(
          color: Color(0xffF7FAFF),
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 5,
              spreadRadius: 1,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/cat1.png'),
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Text(
                'مواد بناء',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
