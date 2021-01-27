import 'package:flutter/material.dart';
import '../utils/constants.dart';

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
        obscureText: widget.isObscure,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              widget.iconPath,
              scale: 8,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
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
