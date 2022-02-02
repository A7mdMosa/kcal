import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingPicWidget extends StatelessWidget {
  const TrendingPicWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Container(
        height: 230.h,
        width: 180.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.h),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 72.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0XFFFCFCFC),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.h),
                    bottomRight: Radius.circular(20.h),
                  )),
              child: Padding(
                padding: EdgeInsets.all(8.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Signika',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: 'Signika',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
