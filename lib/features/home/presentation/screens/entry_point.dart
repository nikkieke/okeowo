import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:okeowo/core/colors/app_colors.dart';

import '../../../../core/routes/routes.dart';
import '../widgets/bottom_nav_item.dart';

class EntryPoint extends StatefulWidget {
  final Widget child;

  const EntryPoint({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  int currentIndex = 0;

  void onTap(int value){

    setState(() {
      currentIndex = value;
    });

    switch(value){
      case 0:
        return context.go(Routes.HOME);
      case 1:
        return context.go(Routes.TRANSACTIONS);
      case 2:
        return context.go(Routes.CARDS);
      case 3:
        return context.go(Routes.SETTINGS);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: Container(
        constraints: const BoxConstraints(
          minHeight: 86,
        ),
        height: 80.h,
        padding: EdgeInsets.zero,
        color: AppColors.starkWhite,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavItem(
              onTap: () {
                onTap(0);
              },
              initialLocation: 'ff',
              isCurrent: currentIndex == 0? true:false,
              iconPath: "assets/icons/home_unselected.png",
              iconSelectedPath: "assets/icons/home.png",
              title: "Home",

            ),

            BottomNavItem(
              onTap: () {
                onTap(1);
              },
              initialLocation: 'ff',
              isCurrent: currentIndex == 1? true:false,
              iconPath: "assets/icons/transactions_unselected.png",
              iconSelectedPath: "assets/icons/transactions.png",
              title: "Transactions",

            ),

            BottomNavItem(
              onTap: () {
                onTap(2);
              },
              initialLocation: 'ff',
              isCurrent: currentIndex == 2? true:false,
              iconPath: "assets/icons/card_unselected.png",
              iconSelectedPath: "assets/icons/card.png",
              title: "Cards",

            ),

            BottomNavItem(
              onTap: () {
                onTap(3);
              },
              initialLocation: 'ff',
              isCurrent: currentIndex == 3? true:false,
              iconPath: "assets/icons/settings_unselected.png",
              iconSelectedPath: "assets/icons/settings.png",
              title: "Settings",

            ),
          ],
        ),
      ),


    );
  }
}