import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../widgets/app_text.dart';

class VoucherCardWidget extends StatelessWidget {
  const VoucherCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: AppColors.leadGrey,
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/voucher_balance.svg",
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const AppText(
                    text: "Voucher Balance",
                    fontWeight: FontWeight.w600,
                    size: 14,
                    color: AppColors.lightBlack,
                  ),
                ],
              ),
              const AppText(
                text: "₦50,900.78",
                fontWeight: FontWeight.w600,
                size: 14,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/gen_code.svg",
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const AppText(
                    text: "Generated Code",
                    fontWeight: FontWeight.w600,
                    size: 14,
                    color: AppColors.lightBlack,
                  ),
                ],
              ),
              const AppText(
                text: "987-567-890",
                fontWeight: FontWeight.w600,
                size: 14,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(7.5.r),
                  decoration: BoxDecoration(
                    color: AppColors.starkWhite,
                    border: Border.all(color: AppColors.ashGrey, width: 1.w),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/copy.svg",
                        width: 20.w,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      const AppText(
                        text: "Copy Code",
                        fontWeight: FontWeight.w600,
                        size: 14,
                        color: AppColors.inkBlue,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 8.w,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(7.5.r),
                  decoration: BoxDecoration(
                    color: AppColors.starkWhite,
                    border: Border.all(color: AppColors.ashGrey, width: 1.w),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/share.svg",
                        width: 20.w,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      const AppText(
                        text: "Share Code",
                        fontWeight: FontWeight.w600,
                        size: 14,
                        color: AppColors.inkBlue,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}