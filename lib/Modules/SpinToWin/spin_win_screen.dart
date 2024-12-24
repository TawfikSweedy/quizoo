
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:quizoo/Modules/SpinToWin/spin_win_controller.dart';
import 'package:quizoo/Utilities/theme_helper.dart';
import '../../generated/assets.dart';

class SpinWinScreen extends StatefulWidget {
  static const routeName = "/SpinWinScreen";
  const SpinWinScreen({super.key});

  @override
  _SpinWinScreenState createState() => _SpinWinScreenState();
}

class _SpinWinScreenState extends StateMVC<SpinWinScreen> {
  _SpinWinScreenState() : super(SpinWinController()) {
    con = SpinWinController();
  }

  late SpinWinController con;
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
              child: Image.asset(
                Assets.ic_spintoWin,
                height: 300,
                width: 300,
                // fit: BoxFit.cover,
              ),
            ),
            Gap(40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  con.GotoGameDetails(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ThemeClass.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Spin for free",
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
