import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTextField extends StatefulWidget {
  MainTextField({
    this.hintText = 'اسم الشركة',
    this.iconPath = 'assets/icons/profile.png',
    this.isObscure = false,
  });
  final String hintText;
  final String iconPath;
  final bool isObscure;

  @override
  _MainTextFieldState createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
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
        style: TextStyle(color: Theme.of(context).accentColor, fontSize: 22.sp),
        cursorColor: Theme.of(context).accentColor,
        obscureText: widget.isObscure,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Image.asset(
              widget.iconPath,
              scale: 8.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(50.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).accentColor),
            borderRadius: BorderRadius.circular(50.r),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
          hintStyle:
              TextStyle(color: Colors.black.withOpacity(.3), fontSize: 18),
          hintText: widget.hintText,
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
