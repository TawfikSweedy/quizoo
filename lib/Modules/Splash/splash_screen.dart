import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quizoo/Modules/Main_Screen/main_screen.dart';
import '../../Utilities/theme_helper.dart';
import '../../generated/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 2));
    context.go(MainScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeClass.whiteColor,
      body: Center(child: Image.asset(Assets.ic_logo, width: 267.w)),
    );
  }
}
