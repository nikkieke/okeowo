import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../widgets/app_text.dart';

class QuickActionsItem extends StatelessWidget {
  const QuickActionsItem({
    super.key,
    required this.text,
    required this.iconPath,
  });

  final String text;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.r, bottom: 15.r, right:5.r, left:5.r),
      width: 80.w,
      decoration: BoxDecoration(
        color: AppColors.leadGrey,
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 20.w,
          ),
          SizedBox(height: 10.h,),
          AppText(
            text: text,
            color: AppColors.primaryColor,
            size: 12,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}