
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:quizoo/Modules/Home/home_controller.dart';
import 'package:quizoo/Utilities/theme_helper.dart';
import 'package:quizoo/generated/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends StateMVC<HomeScreen> {
  _HomeScreenState() : super(HomeController()) {
    con = HomeController();
  }

  late HomeController con;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeClass.whiteColor,
      appBar: AppBar(
        backgroundColor: ThemeClass.whiteColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Welcome Back,',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: ThemeClass.colorBDBDBD
              ),
            ),
            Text(
                'Tawfiq Sweedy',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: ThemeClass.colorBlack,
                fontSize: 20
              ),
            )
          ],
        ),
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                IconButton(
                  icon: Image.asset(Assets.ic_search),
                  onPressed: () {
                  },
                ),
                Gap(8.w),
                IconButton(
                  icon: Image.asset(Assets.ic_notif),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: ThemeClass.colorF5F5F5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Assets.ic_heart),
                    Gap(10.w),
                    Text(
                        '05',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20
                      ),
                    ),
                    Gap(10.w),
                    Text(
                        'Chances',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: ThemeClass.color9E9E9E,
                      ),
                    ),
                    Gap(10.w),
                    Container(
                      width: 1,
                      height: 30,
                      color: ThemeClass.colorE0E0E0,
                    ),
                    Gap(10.w),
                    Image.asset(Assets.ic_coin),
                    Gap(10.w),
                    Text(
                      '5000',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),
                    ),
                    Gap(10.w),
                    Text(
                      'Coins',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        color: ThemeClass.color9E9E9E,
                      ),
                    ),
                    Gap(10.w),
                  ],
                ),
              ),
              Gap(20.h),
              GestureDetector(
                onTap: (){
                  print('Premium card clicked!');
                },
                child: Stack(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(Assets.bg_premium_card),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Upgrade to Premium !',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(16.h),
                                Text(
                                  'Upgrade for endless quiz fun, an ad-free experience, the advantage of an extra help option in each game to rise to the top and become the ultimate champion!',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: ThemeClass.colorBDBDBD
                                  )
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: ThemeClass.primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(20.h),
              Container(
                height: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: ThemeClass.color37093A,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              Assets.ic_objects,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Gap(8.h),
                        Text(
                          'Categories',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: ThemeClass.color37093A,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              Assets.ic_coin_heart,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Gap(8.h),
                        Text(
                          'spin to win',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        con.GotoSpin(context);
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: ThemeClass.color37093A,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                Assets.ic_spin,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Gap(8.h),
                          Text(
                            'Random Play',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Popular Game',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              Gap(20.h),
              GestureDetector(
                onTap: (){
                  print('Popular Game!');
                },
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(Assets.bg_phyices),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Physics',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: ThemeClass.whiteColor
                      ),
                    ),
                  ),
                ),
              ),
              Gap(20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Most Played Games',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              Gap(20.h),
              GestureDetector(
                onTap: (){
                  print('Most Played Games!');
                },
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(Assets.bg_phyices),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Most Played Games',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: ThemeClass.whiteColor
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
