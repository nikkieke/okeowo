import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okeowo/core/colors/app_colors.dart';
import 'package:okeowo/widgets/app_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.starkWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16, top: 20, left: 16,right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Row(
                  children: [
                    SvgPicture.asset(
                        "assets/icons/avatar.svg",
                      width: 26.w,
                    ),
                    SizedBox(width: 5.w,),
                    AppText(
                        text: "Welcome Eniola",
                        fontWeight: FontWeight.w700,
                        size: 16.sp,
                    ),
                  ],
                ),
              SizedBox(height: 16.h,),
              Container(
                height: 126.h,
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 22.r, bottom: 16.r, left: 16.r, right: 16.r),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.r))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: "MTOKEN WALLET",
                          color: AppColors.fadedWhite,
                          size: 15.sp,
                        ),
                        SizedBox(
                          height: 19.h,
                        ),
                        Row(

                          children: [
                            AppText(
                              text: "₦",
                              color: AppColors.fadedWhite,
                              size: 12.sp,
                              fontFamily: GoogleFonts.inter().fontFamily,
                            ),
                            AppText(
                              text: " 450,900.78",
                              color: AppColors.starkWhite,
                              size: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 19.h,
                        ),
                        AppText(
                          text: "Eniola Michael",
                          color: AppColors.fadedWhite,
                          size: 15.sp,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/icons/eye.svg",
                      width: 20.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
