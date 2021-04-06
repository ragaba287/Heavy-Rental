import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/ClipShadowPath.dart';

class MainFAB extends StatefulWidget {
  MainFAB({this.onTap});
  final Function onTap;

  @override
  _MainFABState createState() => _MainFABState();
}

class _MainFABState extends State<MainFAB> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Transform.translate(
        offset: Offset(0, -20),
        child: ClipShadowPath(
          clipper: CustomDiamondClipper(),
          shadow: BoxShadow(
            blurRadius: 0,
            offset: Offset(0, 5),
            color: Theme.of(context).accentColor.withOpacity(.22),
          ),
          child: Container(
            height: 120,
            width: 120,
            color: Theme.of(context).accentColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    'أضف خدمة',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDiamondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);
    path.lineTo(size.width / 2, 0);
    // path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
