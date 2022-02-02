import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingLinesWidget extends StatelessWidget {
  const TrendingLinesWidget({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.h),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Signika',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xffFF8473),
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Icon(
            Icons.trending_up,
            color: const Color(0xffFF8473),
            size: 17.h,
          )
        ],
      ),
    );
  }
}
