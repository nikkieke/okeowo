import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../widgets/app_text.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children:[
                      SvgPicture.asset(
                        dummyList[index].iconPath,
                        width: 20.w,
                      ),
                      SizedBox(width: 14.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: dummyList[index].name,
                            color: AppColors.primaryColor,
                            size: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 5.h,),
                          AppText(
                            text: dummyList[index].time,
                            color: AppColors.ashGrey,
                            size: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      )
                    ]
                ),
                AppText(
                  text: dummyList[index].transactionAmt,
                  color: AppColors.primaryColor,
                  size: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          );
        }
    );
  }
}

class DummyItem{
  const DummyItem(this.iconPath, this.name, this.time, this.transactionAmt);

  final String iconPath;
  final String name;
  final String time;
  final String transactionAmt;
}

List <DummyItem> dummyList = [
  const DummyItem("assets/icons/money_plus.svg", "Noimot Aderonke Adenola", "8.52 PM", "+₦56,000"),
  const DummyItem("assets/icons/money_minus.svg", "Michael James", "8.52 PM", "-₦1,130,500"),
  const DummyItem("assets/icons/money_plus.svg", "Noimot Aderonke Adenola", "8.52 PM", "+₦56,000"),
  const DummyItem("assets/icons/money_minus.svg", "Michael James", "8.52 PM", "-₦1,130,500"),
];
