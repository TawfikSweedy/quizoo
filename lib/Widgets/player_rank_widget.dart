
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utilities/theme_helper.dart';

class PlayerRankWidget extends StatefulWidget {
  final int index;
  const PlayerRankWidget({super.key, required this.index});

  @override
  State<PlayerRankWidget> createState() => _PlayerRankWidgetState();
}

class _PlayerRankWidgetState extends State<PlayerRankWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: ThemeClass.color5A0F5F,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: ThemeClass.color7B1382,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: GoogleFonts.poppins(
                            color: ThemeClass.whiteColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        ),
                      ),
                    ),
                  ),
                  Gap(10.w),
                  Text(
                    'Tawfiq',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: ThemeClass.whiteColor
                    ),
                  ),
                ],
              ),
              Text(
                '3200',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: ThemeClass.whiteColor
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
