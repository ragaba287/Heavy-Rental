// import 'package:flutter/material.dart';
// import '../utils/constants.dart';

// class MainNavBar extends StatefulWidget {
//   @override
//   _MainNavBarState createState() => _MainNavBarState();
// }

// class _MainNavBarState extends State<MainNavBar> {
//   int currentItem = 0;
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//         // shape:
//         notchMargin: 10,
//         child: Transform.translate(
//           offset: Offset(0, -20),
//           child: Container(
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0x14646464),
//                     blurRadius: 20,
//                     spreadRadius: 10,
//                     offset: Offset(0, 2),
//                   ),
//                 ]),
//             height: 80,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 navItem(
//                   label: 'حسابي',
//                   imagePath: 'assets/icons/profileOutline.png',
//                   onPressed: () {
//                     setState(() {
//                       currentItem = 3;
//                     });
//                   },
//                   textColor: currentItem == 3 ? mainColor : Colors.grey,
//                 ),
//                 navItem(
//                   label: 'خدماتي',
//                   imagePath: 'assets/icons/mic.png',
//                   onPressed: () {
//                     setState(() {
//                       currentItem = 2;
//                     });
//                   },
//                   textColor: currentItem == 2 ? mainColor : Colors.grey,
//                 ),
//                 SizedBox(width: 70),
//                 navItem(
//                   label: 'أطلب',
//                   imagePath: 'assets/icons/request.png',
//                   onPressed: () {
//                     setState(() {
//                       currentItem = 1;
//                     });
//                   },
//                   textColor: currentItem == 1 ? mainColor : Colors.grey,
//                 ),
//                 navItem(
//                   label: 'الرئيسية',
//                   imagePath: 'assets/icons/home.png',
//                   onPressed: () {
//                     setState(() {
//                       currentItem = 0;
//                     });
//                   },
//                   padding: 0,
//                   textColor: currentItem == 0 ? mainColor : Colors.grey,
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }

//   Widget navItem({
//     String imagePath = 'assets/icons/profile.png',
//     Function onPressed,
//     String label = 'الرئيسية',
//     double padding = 8,
//     Color textColor = Colors.grey,
//   }) {
//     return InkWell(
//       onTap: onPressed,
//       child: Container(
//         width: 65,
//         height: 65,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Color(0xffF8FCFF),
//           border: Border.all(color: Colors.white, width: 3),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Image.asset(
//               imagePath,
//               width: 20,
//             ),
//             Padding(
//               padding: EdgeInsets.only(right: padding),
//               child: Text(
//                 label,
//                 style: TextStyle(
//                   color: textColor,
//                   fontSize: 15,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
