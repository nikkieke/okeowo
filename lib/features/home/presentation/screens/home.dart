import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:okeowo/core/colors/app_colors.dart';
import 'package:okeowo/widgets/app_text.dart';

import '../../../../core/routes/routes.dart';
import '../widgets/quick_action_items.dart';
import '../widgets/transaction_list.dart';
import '../widgets/voucher_button.dart';
import '../widgets/card_widget.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const CardWidget(),
              SizedBox(height: 12.h,),
              RawMaterialButton(
                  onPressed: (){
                    context.push("${Routes.HOME}/${Routes.GENERATE_VOUCHER}");
                  },
                  child: const VoucherButton()),
              SizedBox(height: 24.h,),
              AppText(
                text: "Quick Actions",
                fontWeight: FontWeight.w700,
                size: 16.sp,
              ),
              SizedBox(height: 12.h,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickActionsItem(text: 'Redeem', iconPath: "assets/icons/redeem.svg",),
                  QuickActionsItem(text: 'Fund Wallet', iconPath: "assets/icons/fund_wallet.svg",),
                  QuickActionsItem(text: 'Withdraw', iconPath: "assets/icons/withdraw.svg",),
                  QuickActionsItem(text: 'Scan Code', iconPath: "assets/icons/scan_code.svg",),
                ],
              ),
              SizedBox(height: 24.h,),
              AppText(
                text: "Transactions",
                fontWeight: FontWeight.w700,
                size: 16.sp,
              ),
              SizedBox(height: 12.h,),
              const TransactionList()

            ],
          ),
        ),
      ),
    );
  }
}









