
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:quizoo/Modules/Games/GameDetails/GameDetailsController.dart';
import 'package:quizoo/Widgets/player_rank_widget.dart';
import 'package:quizoo/generated/assets.dart';

import '../../../Utilities/theme_helper.dart';
import '../../../Widgets/top_rank_widget.dart';

class GamedetailsScreen extends StatefulWidget {
  static const routeName = "/GamedetailsScreen";
  const GamedetailsScreen({super.key});

  @override
  _GamedetailsScreenState createState() => _GamedetailsScreenState();
}

class _GamedetailsScreenState extends StateMVC<GamedetailsScreen> with TickerProviderStateMixin {
  _GamedetailsScreenState() : super(GameDetailsController()) {
    con = GameDetailsController();
  }

  late GameDetailsController con;

  @override
  void initState() {
    super.initState();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeClass.color37093A,
      appBar: AppBar(
        backgroundColor: ThemeClass.color37093A,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ThemeClass.color5A0F5F,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: ThemeClass.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                            'Research',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: ThemeClass.whiteColor
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: ThemeClass.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(Assets.ic_research)
                        ),
                      ],
                    ),
                  ),
                  Gap(10.h),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(Assets.message_question),
                            Gap(8.w),
                            Text(
                                '10 Questions',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: ThemeClass.whiteColor
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(Assets.ic_usd_coin),
                            Gap(8.w),
                            Text(
                                '500 Coins',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: ThemeClass.whiteColor
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      height: 0.5,
                      color: ThemeClass.whiteColor.withOpacity(0.1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(Assets.ic_play),
                            Gap(8.w),
                            Text(
                              'Play Now',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: ThemeClass.whiteColor
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(Assets.ic_question),
                            Gap(8.w),
                            Text(
                              'How to Play',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: ThemeClass.primaryColor
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Gap(10.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(Assets.ic_2nd),
                                  Image.asset(Assets.ic_points_2nd),
                                  // Image.asset(Assets.ic_rank_2nd),
                                  TopRankWidget(assetName: Assets.ic_rank_2nd, assetHeight: 120.0)
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(Assets.ic_1st),
                                  Image.asset(Assets.ic_points_1st),
                                  // Image.asset(Assets.ic_rank_1st),
                                  TopRankWidget(assetName: Assets.ic_rank_1st , assetHeight:  150.0),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(Assets.ic_3rd),
                                  Image.asset(Assets.ic_points_3rd),
                                  // Image.asset(Assets.ic_rank_3rd),
                                  TopRankWidget(assetName: Assets.ic_rank_3rd, assetHeight: 90.0)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(10.h),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (_, index) {
                          return PlayerRankWidget(index: index);
                        },
                        itemCount: 10),
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
