
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


getIcon(int id, String label, String icon , int currentIndex) {
  return BottomNavigationBarItem(
    icon: Container(
      padding: EdgeInsets.only(
          bottom: 10.h
      ),
      child: Image.asset(icon),
    ),
    label: label,
  );
}