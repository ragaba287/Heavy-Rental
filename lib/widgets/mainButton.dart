import 'package:flutter/material.dart';
import '../utils/constants.dart';

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
      height: 50,
      minWidth:
          minmWidth == 0.0 ? MediaQuery.of(context).size.width * .8 : minmWidth,
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
