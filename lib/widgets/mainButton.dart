import 'package:flutter/material.dart';
import '../utils/constants.dart';

class MainButton extends StatelessWidget {
  MainButton({this.onPressed, this.title = 'تسجيل الدخول'});
  final Function onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50,
      minWidth: MediaQuery.of(context).size.width * .8,
      child: RaisedButton(
        onPressed: onPressed,
        color: mainColor,
        // splashColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
