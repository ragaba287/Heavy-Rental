import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';

class ItemCon extends StatelessWidget {
  ItemCon({
    this.itemPrice = 400,
    this.itemName = 'جرافة حديثة',
    this.itemRate = 0,
  });
  final String itemName;
  final int itemRate;
  final int itemPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell(
        onTap: () {
          print('Name : $itemName , Price: $itemPrice , Rate: $itemRate');
        },
        child: Container(
          height: 190,
          width: 170,
          decoration: BoxDecoration(
            color: Color(0xffF7FAFF),
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(10),
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 115,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // image: AssetImage('assets/lowerBG.png'),
                      image: AssetImage('assets/grafaImg.png'),
                      fit: BoxFit.fitHeight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: List.generate(
                        5,
                        (index) => Icon(
                          index < itemRate ? Icons.star : Icons.star_border,
                          size: 13,
                          color: index < itemRate ? mainColor : null,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      itemName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' / في اليوم',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      ' $itemPrice جنية',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Color(0xffF7547B),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
