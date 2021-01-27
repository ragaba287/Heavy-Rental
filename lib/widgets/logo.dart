import 'package:flutter/material.dart';

class LogoFull extends StatelessWidget {
  LogoFull({this.isFull = true});
  final bool isFull;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        'assets/logo.png',
        // height: 0,
      ),
      SizedBox(height: isFull ? 20 : 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          sideLines(),
          SizedBox(width: isFull ? 20 : 10),
          Text(
            'معدات',
            style: isFull
                ? Theme.of(context).textTheme.headline1
                : Theme.of(context).textTheme.headline3,
          ),
          SizedBox(width: isFull ? 60 : 30),
          sideLines(),
        ],
      ),
      Text(
        'لتأجير كافة آلات البناء',
        style: isFull
            ? Theme.of(context).textTheme.headline2
            : Theme.of(context).textTheme.headline4,
      ),
    ]);
  }

  Column sideLines() {
    return Column(
      children: List.generate(
          3,
          (index) => Padding(
                padding: EdgeInsets.all(isFull ? 6 : 3),
                child: Container(
                  height: isFull ? 7 : 4,
                  width: isFull ? 20 : 15,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )),
    );
  }
}
