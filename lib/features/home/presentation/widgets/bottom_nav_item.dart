import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:okeowo/core/colors/app_colors.dart';
import 'package:okeowo/widgets/app_text.dart';

class BottomNavItem extends StatefulWidget {
  final VoidCallback onTap;
  final String? iconPath;
  final String? iconSelectedPath;
  final String? title;
  final String initialLocation;
  bool? isCurrent;


  BottomNavItem({Key? key,
    required this.onTap,
    this.iconPath,
    this.iconSelectedPath,
    this.title,
    this.isCurrent = false,
    required this.initialLocation

  }) : super(key: key);

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: widget.onTap,
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)
            )
          )
        ),
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                width: 24.w,
                widget.isCurrent == false?
                    widget.iconPath!:
                    widget.iconSelectedPath!,
              ),

               SizedBox(
                height: 1.5.h,
              ),
              AppText(
                  text: widget.title!,
                  fontWeight: FontWeight.w400,
                  size: 12.5,
                  color: widget.isCurrent == false?
                  AppColors.primaryColor.withOpacity(0.5):
                      AppColors.primaryColor
              ),

            ],
          ),
        )
    );
  }
}
