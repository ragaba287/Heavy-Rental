import 'package:flutter/material.dart';

class LogoFull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset('assets/logo.png'),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          sideLines(),
          SizedBox(width: 20),
          Text(
            'معدات',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(width: 60),
          sideLines(),
        ],
      ),
      Text(
        'لتأجير كافة آلات البناء',
        style: Theme.of(context).textTheme.headline2,
      ),
    ]);
  }

  Column sideLines() {
    return Column(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 7,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )),
    );
  }
}
