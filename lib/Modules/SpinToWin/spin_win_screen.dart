
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:quizoo/Modules/Home/home_screen.dart';
import 'package:quizoo/Modules/SpinToWin/spin_win_controller.dart';
import 'package:quizoo/Utilities/theme_helper.dart';
import '../../generated/assets.dart';
import '../Main_Screen/main_screen.dart';

class SpinWinScreen extends StatefulWidget {
  static const routeName = "/SpinWinScreen";
  const SpinWinScreen({super.key});

  @override
  _SpinWinScreenState createState() => _SpinWinScreenState();
}

class _SpinWinScreenState extends StateMVC<SpinWinScreen> with SingleTickerProviderStateMixin {
  _SpinWinScreenState() : super(SpinWinController()) {
    con = SpinWinController();
  }
  late SpinWinController con;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    con.initialize(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeClass.color37093A,
      appBar: AppBar(
        backgroundColor: ThemeClass.color37093A,
        title: Row(
          children: [
            Image.asset(Assets.ic_coin),
            Gap(10.w),
            Text(
              '5000',
              style: GoogleFonts.poppins(
                  color: ThemeClass.whiteColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset(Assets.ic_logout),
            onPressed: () {
              context.go(MainScreen.routeName);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(40.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Spin To Win",
                style: GoogleFonts.aladin(
                  fontWeight: FontWeight.w400,
                  fontSize: 48,
                  color: ThemeClass.whiteColor
                ),
              ),
            ),
            Gap(40.h),
            Center(
              child: Stack(
                children: [
                  RotationTransition(
                    turns: Tween<double>(begin: 0, end: 10)
                        .animate(CurvedAnimation(
                      parent: animationController,
                      curve: Curves.linear,
                    )),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        Assets.ic_circular_spin,
                        height: 240,
                        width: 240,
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      Assets.ic_base_spin,
                      height: 300,
                      width: 300,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ]
              ),
            ),
            Gap(40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    con.isSpin == false ? con.startSpin() : con.GotoGameDetails(context);
                    con.isSpin = !con.isSpin;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ThemeClass.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  con.isSpin == false ? "Spin for free" : "Go to Game",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: ThemeClass.whiteColor
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
