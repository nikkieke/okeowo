import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routes/routes.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../widgets/app_text.dart';
import '../widgets/button.dart';
import '../widgets/voucher_success_dialog.dart';

class GenerateVoucher extends StatefulWidget {
  const GenerateVoucher({Key? key}) : super(key: key);

  @override
  State<GenerateVoucher> createState() => _GenerateVoucherState();
}

class _GenerateVoucherState extends State<GenerateVoucher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.starkWhite,
        body: SafeArea(
          child: Padding(
          padding: EdgeInsets.only(bottom: 16.r, top: 20.r, left: 16.r,right: 16.r),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
            alignment: Alignment.center,
            children: [
              const Align(
                alignment: Alignment.center,
                child: AppText(
                  text: "Generate Payment Voucher",
                  fontWeight: FontWeight.w800,
                  size: 16,
                  color: AppColors.leadBlack,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    context.go(Routes.HOME);
                  },
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                      ),
                    ),
                ), child: Padding(
                  padding: EdgeInsets.zero,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 12.w,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              ),
            ]
          ),
             SizedBox(
               height: 24.h,
             ),
            SizedBox(
              width: 280.w,
              child: const AppText(
                text: "Enter an amount you want to generate a voucher for.",
                size: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.leadBlack,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Amount",
                  size: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.leadBlack,
                ),
                AppText(
                  text: "Available Balance - ₦450,900.78 ",
                  size: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.ashGrey,
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
             TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10.r),
                hintText: "₦  Enter amount",
                hintStyle: const TextStyle(
                  color: AppColors.ashGrey,
                  fontSize: 16,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  borderSide: BorderSide(width: 1,color: AppColors.primaryColor,),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(width: 1,color: AppColors.ashGrey),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            RawMaterialButton(
                onPressed: () {
                  voucherSuccessDialog(
                      context, onClosed: (_){
                  }
                  );
                },
                child: const Button(text: 'Generate Voucher',)),
          ],
          ),
          ),
        ),
    );
  }
}


