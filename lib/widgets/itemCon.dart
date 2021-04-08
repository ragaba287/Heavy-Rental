import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/mainItem.dart';

class ItemCon extends StatelessWidget {
  ItemCon({
    this.itemPrice = 400,
    this.itemName = 'جرافة حديثة',
    this.itemRate = 0,
    this.itemPic = 'assets/grafaImg.png',
  });
  final String itemName;
  final int itemRate;
  final int itemPrice;
  final String itemPic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MainItem(
                      itemName: itemName,
                      itemRate: itemRate,
                      itemPrice: itemPrice,
                      itemPic: itemPic,
                    )),
          );
        },
        child: Container(
          height: 154.h,
          width: 135.w,
          decoration: BoxDecoration(
            color: Color(0xffF7FAFF),
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(10.r),
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
                  height: 100.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // image: AssetImage('assets/lowerBG.png'),
                      image: AssetImage(itemPic),
                      fit: BoxFit.fitHeight,
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x49070707),
                        spreadRadius: .1,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: List.generate(
                        5,
                        (index) => Icon(
                          index < itemRate ? Icons.star : Icons.star_border,
                          size: 10.w,
                          color: index < itemRate
                              ? Theme.of(context).accentColor
                              : null,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      itemName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
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
                      style: TextStyle(fontSize: 10.sp),
                    ),
                    Text(
                      ' $itemPrice جنية',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Color(0xffF7547B),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
