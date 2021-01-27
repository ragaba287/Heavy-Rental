import 'package:flutter/material.dart';
import '../utils/constants.dart';

class MainAppBar extends StatefulWidget {
  MainAppBar({this.title, this.isBack = false});
  final String title;
  final bool isBack;
  @override
  _MainAppBarState createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  bool isNotif = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: mainColor,
      flexibleSpace: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: 30.0, left: 20, right: widget.isBack ? 15 : 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0, top: 16),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        print('notfication');
                        setState(() {
                          isNotif = !isNotif;
                        });
                      },
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/icons/bell.png'),
                          ),
                          Positioned(
                            right: 5,
                            top: 2,
                            child: Visibility(
                              visible: isNotif,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: mainColor,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset('assets/icons/settings.png'),
                      ),
                      onTap: () {
                        print('settings');
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0, right: 30),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              widget.isBack
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ))
                  : Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                  offset: Offset(0, 9))
                            ]),
                            child: Image.asset(
                              'assets/logo.png',
                              height: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: List.generate(
                                    3,
                                    (index) => Padding(
                                          padding: EdgeInsets.all(1),
                                          child: Container(
                                            height: 1,
                                            width: 3,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 8, left: 3),
                                child: Text(
                                  'معدات',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xffF7941D),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Column(
                                children: List.generate(
                                    3,
                                    (index) => Padding(
                                          padding: EdgeInsets.all(1),
                                          child: Container(
                                            height: 1,
                                            width: 3,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );
  }
}
