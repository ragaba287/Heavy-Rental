import 'package:flutter/material.dart';
import '../widgets/mainWidgets/mainButton.dart';

class MainItem extends StatefulWidget {
  static const String id = 'mainItem_screen';
  MainItem({
    this.itemName = 'جرافة',
    this.itemRate = 0,
    this.itemPrice = 0,
    this.itemPic = 'assets/grafaImg.png',
  });
  final String itemName;
  final int itemRate;
  final int itemPrice;
  final String itemPic;
  @override
  _MainItemState createState() => _MainItemState();
}

class _MainItemState extends State<MainItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.itemPic),
                      fit: BoxFit.fitHeight,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 10,
                  right: 10,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 20,
                            spreadRadius: 1,
                          )
                        ]),
                    height: 100,
                    child: Column(
                      children: [
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            SizedBox(width: 20),
                            Text(
                              widget.itemName,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '${widget.itemPrice} جنية',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' / في اليوم',
                              textDirection: TextDirection.rtl,
                            ),
                            SizedBox(width: 25),
                          ],
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            SizedBox(width: 20),
                            Text(
                              ': الحجم',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'تريلا',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            SizedBox(width: 15),
                            Icon(
                              Icons.star,
                              color: Theme.of(context).accentColor,
                            ),
                            Text(
                              '${widget.itemRate} | 17 تقييم',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.calendar_today_outlined,
                              color: Theme.of(context).accentColor,
                            ),
                            SizedBox(width: 5),
                            Text('31-08-2020'),
                            SizedBox(width: 60),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 30,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: IconButton(
                        color: Theme.of(context).accentColor,
                        icon: Icon(Icons.share),
                        onPressed: () {},
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
              child: Column(
                children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MainButton(
                        onPressed: () {},
                        title: 'اتصل',
                        minmWidth: 150.0,
                      ),
                      MainButton(
                        onPressed: () {},
                        title: 'ارسل رسالة',
                        minmWidth: 150.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: IconButton(
                          color: Theme.of(context).accentColor,
                          icon: Icon(Icons.flag),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Icon(
                              Icons.notifications_active_outlined,
                              color: Theme.of(context).accentColor,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'تفاصيل الخدمة',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 4,
                                  decorationColor:
                                      Theme.of(context).accentColor,
                                  fontSize: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40, left: 10),
                          child: Text(
                            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الف هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  MainButton(
                    onPressed: () {},
                    title: 'إحجز الأن',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
