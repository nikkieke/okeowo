import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../widgets/app_text.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                height: 8.h,
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
                height: 8.h,
              ),
              AppText(
                text: "Eniola Michael",
                color: AppColors.fadedWhite,
                size: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          SvgPicture.asset(
            "assets/icons/eye.svg",
            width: 20.w,
          ),
        ],
      ),
    );
  }
}