import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FeedFavouriteWidget extends StatelessWidget {
  const FeedFavouriteWidget({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    required this.image,
    required this.text,
  }) : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      height: 144.h,
      width: 132.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30.h),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              fit: BoxFit.cover,
              height: 48.h,
              width: 31.w,
            ),
            SizedBox(height: 12.h),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: textColor,
              ),
            )
          ]),
    );
  }
}
