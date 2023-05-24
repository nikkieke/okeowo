import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../widgets/app_text.dart';

class VoucherButton extends StatelessWidget {
   const VoucherButton({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/icons/voucher.svg",
            width: 20.w,
          ),
          SizedBox(width: 8.w,),
          AppText(
            text: "Generate Payment Voucher",
            color: AppColors.starkWhite,
            size: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}