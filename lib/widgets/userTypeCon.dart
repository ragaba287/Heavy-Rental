import 'package:flutter/material.dart';
import '../utils/constants.dart';

class UserTypeContainer extends StatefulWidget {
  UserTypeContainer(
      {this.type = 'مستخدم عادي', this.typeImage = 'assets/normalUser.png'});

  final String type;
  final String typeImage;

  @override
  _UserTypeContainerState createState() => _UserTypeContainerState();
}

class _UserTypeContainerState extends State<UserTypeContainer> {
  bool checkMark = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffF7FAFF),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: .1,
                    blurRadius: 15,
                    // offset: Offset(0, 3),
                  )
                ]),
            child: Material(
              child: InkWell(
                onTap: () {
                  setState(() {
                    checkMark = !checkMark;
                  });
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  child: Column(children: [
                    Image.asset(
                      widget.typeImage,
                      height: 90,
                    ),
                    SizedBox(height: 20),
                    Text(
                      widget.type,
                      style: TextStyle(
                        color: mainColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ),
          Visibility(
            visible: checkMark,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff24C075),
                ),
                child: Icon(Icons.check, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
