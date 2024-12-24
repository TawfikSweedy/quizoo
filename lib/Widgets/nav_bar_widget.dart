//
// import 'package:flutter/material.dart';
//
// import '../Utilities/theme_helper.dart';
//
// class NavBarWidget extends StatefulWidget {
//   final Function(int)? onTap;
//   int? currentIndex;
//
//   NavBarWidget({Key? key, this.currentIndex, this.onTap}) : super(key: key);
//
//   @override
//   State<NavBarWidget> createState() => _NavBarWidgetState();
// }
//
// class _NavBarWidgetState extends State<NavBarWidget> {
//   Color onChangeColor({required int index}) {
//     if (widget.currentIndex == index) {
//       return ThemeClass.primaryColor;
//     } else {
//       return ThemeClass.color9E9E9E;
//     }
//   }
//
//   List<PersistentBottomNavBarItem> get items =>
//       [
//         PersistentBottomNavBarItem(
//           icon: Image.asset(
//             Assets.imagesHomeIc,
//             width: 24.w,
//             color: onChangeColor(index: 0),
//           ),
//         ),
//         PersistentBottomNavBarItem(
//           icon: Image.asset(Assets.imagesCalendarIc,
//               width: 24.w, color: onChangeColor(index: 1)),
//         ),
//         PersistentBottomNavBarItem(
//           activeColorPrimary: ThemeClass.primaryColor,
//           icon: Image.asset(
//             Assets.imagesCarIc,
//             width: 24.w,
//           ),
//         ),
//         PersistentBottomNavBarItem(
//           icon: Image.asset(Assets.imagesFluentTaskIcpng,
//               width: 24.w, color: onChangeColor(index: 3)),
//         ),
//         PersistentBottomNavBarItem(
//           icon: Image.asset(Assets.imagesProfileIc,
//               width: 24.w, color: onChangeColor(index: 4)),
//         ),
//       ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 82.h,
//       width: 375.w,
//       padding: EdgeInsetsDirectional.symmetric(horizontal: 12.w),
//       decoration: BoxDecoration(
//         color: ThemeClass.whiteColor,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: const Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: test.map((e) {
//           return GestureDetector(
//               onTap: () {
//                 setState(() {
//                   widget.currentIndex = e.id;
//                 });
//                 if (widget.onTap != null) {
//                   widget.onTap!(e.id ?? 0);
//                 } else {
//                   // Modular.to.pushNamed(MainScreen.routeName, arguments: e.id);
//                 }
//               },
//               child: e.widget);
//         }).toList(),
//       ),
//     );
//   }
//
// }