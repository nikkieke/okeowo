import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okeowo/core/colors/app_colors.dart';
import 'package:okeowo/widgets/app_text.dart';

import '../../../../core/routes/routes.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.go(Routes.HOME);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.starkWhite,
      body: Center(
        child: AppText(
          text: 'Ọkẹ́owó',
          color: AppColors.primaryColor,
          fontFamily: GoogleFonts.inter().fontFamily,
          fontWeight: FontWeight.w600,
          size: 36.sp,
        ),
      ),

    );
  }
}


