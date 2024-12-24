
import 'package:flutter/material.dart';
import 'package:quizoo/Modules/Home/home_screen.dart';
import 'package:quizoo/generated/assets.dart';

import '../../Utilities/bottomNavigationItem.dart';
import '../../Utilities/theme_helper.dart';
import '../../Widgets/internetCheckerWidget.dart';

class MainScreen extends StatefulWidget {
  static const routeName = "/MainScreen";
  MainScreen({super.key });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border(top: BorderSide(color: Colors.white, width: 0.5))),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.white,
            highlightColor: Colors.transparent,
            bottomNavigationBarTheme:
            Theme.of(context).bottomNavigationBarTheme,
          ),
          child: BottomNavigationBar(
            backgroundColor: ThemeClass.whiteColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ThemeClass.primaryColor,
            items: [
             currentIndex == 0 ? getIcon(0, "Home", Assets.ic_home , currentIndex) : getIcon(0, "Home", Assets.ic_home_off , currentIndex) ,
              getIcon(1, "Nerdy Games", Assets.ic_dice , currentIndex),
              getIcon(2, "Store", Assets.ic_shop , currentIndex),
              getIcon(3, "", Assets.ic_avatar , currentIndex),
            ],
            currentIndex: currentIndex,
            onTap: (int tab) {
              setState(() {
                currentIndex = tab;
              });
            },
          ),
        ),
      ),
    );
  }
}
