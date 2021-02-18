import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_application_1/widgets/serviceItem.dart';

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                'أهلا بك , مصباح أشرف',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
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
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Image.asset(
                        'assets/icons/profile.png',
                        scale: 8,
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        'assets/icons/profile.png',
                        scale: 8,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintStyle: TextStyle(
                        color: Colors.black.withOpacity(.3), fontSize: 18),
                    hintText: '.... إبحث',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.16),
                      offset: Offset(0, 2),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(Icons.add, color: Colors.white)),
                        SizedBox(width: 10),
                        Text(
                          'إختر نوع الخدمة',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Column(
                      children: List.generate(
                          6,
                          (index) => ServiceItem(
                                itemName: 'مواد بناء ${index + 1}',
                              )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
