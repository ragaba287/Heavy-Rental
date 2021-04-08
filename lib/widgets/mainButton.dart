import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  MainButton({
    this.onPressed,
    this.title = 'تسجيل الدخول',
    this.minmWidth = 0.0,
  });
  final Function onPressed;
  final String title;
  final double minmWidth;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.h,
      minWidth:
          minmWidth == 0.0 ? MediaQuery.of(context).size.width * .8 : minmWidth,
      child: RaisedButton(
        onPressed: onPressed,
        color: Theme.of(context).accentColor,
        // splashColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
