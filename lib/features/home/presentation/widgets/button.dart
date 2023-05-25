import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../widgets/app_text.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10.r),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      child: AppText(
        text: text,
        color: AppColors.starkWhite,
        size: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}