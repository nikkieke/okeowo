

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:okeowo/core/colors/app_colors.dart';
import 'package:okeowo/features/home/presentation/widgets/button.dart';
import 'package:okeowo/features/home/presentation/widgets/voucher_card_widget.dart';

import '../../../../core/routes/routes.dart';
import '../../../../widgets/app_text.dart';

Future<Object?>voucherSuccessDialog(BuildContext context, {required ValueChanged onClosed}){
  var size = MediaQuery.of(context).size;


  return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: 'Generation Successful',
      context: context,
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (_, animation,__,child){
        Tween<Offset> tween;
        tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
        return SlideTransition(
          position: tween.animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut)
          ),
          child: child,
        );
      },
      pageBuilder: (context, _, __) => Container(
        height: size.height/1.2,
        margin:  EdgeInsets.only(top: 60.r),
        padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 32.r),
        decoration: BoxDecoration(
          color: AppColors.starkWhite,
          borderRadius:  BorderRadius.only(topRight: Radius.circular(12.r),topLeft: Radius.circular(12.r)),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding:  EdgeInsets.only(top: 12.r, bottom: 8.r),
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height/1.22,
                child: Column(
                  children: [
                    const AppText(
                      text: "Generation Successful",
                      fontWeight: FontWeight.w800,
                      size: 16,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(height: 24.h,),
                    const SizedBox(
                      width: double.maxFinite,
                      child: AppText(
                        text: "Voucher code generated successfully. Copy or share the code to the receipient for them to redeem it.",
                        fontWeight: FontWeight.w600,
                        size: 15.5,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    const VoucherCardWidget(),
                    SizedBox(height: 12.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/info.svg",
                          width: 15.w,
                        ),
                        SizedBox(width: 8.h,),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 46.h,
                            child: const AppText(
                              text: "Voucher status can be viewed in the transaction screen. ",
                              fontWeight: FontWeight.w600,
                              size: 16,
                              color: AppColors.lightBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    RawMaterialButton(
                        onPressed: () {
                          context.go(Routes.HOME);
                        },
                        child: const Button(text: "Return to home screen")),
                  ],
                ),
              ),
            ),
          )
        ),
      ),


  ).then(onClosed);
}

