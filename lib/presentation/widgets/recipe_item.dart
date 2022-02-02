import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../kcal_icons.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({
    Key? key,
    required this.image,
    required this.kcal,
    required this.title,
    required this.subtitle,
    required this.color,
  }) : super(key: key);
  final String image;
  final String kcal;
  final String title;
  final String subtitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        height: 120.h,
        width: 313.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.h),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 5.h,
              right: 5.w,
              child: IconButton(
                  onPressed: () {
                    //TODO :add to favorite
                  },
                  icon: Icon(
                    Kcal.heart,
                    color: const Color(0XFF91C788),
                    size: 25.h,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  image,
                  height: 64.h,
                  width: 82.w,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 20.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      kcal,
                      style: TextStyle(
                        fontFamily: 'Signika',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF6CB663),
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Signika',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0XFF2E2E2E),
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: 'Signika',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0XFF767676),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
