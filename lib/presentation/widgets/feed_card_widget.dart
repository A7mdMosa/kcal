import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FeedCardWidget extends StatelessWidget {
  const FeedCardWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.backgroundColor,
    required this.accentColor,
  }) : super(key: key);
  final String title;
  final String image;
  final Color backgroundColor;
  final Color accentColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 32.w),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'ARTICLE',
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: accentColor,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff330600),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            MaterialButton(
                child: Row(children: [
                  Text(
                    'Read Now',
                    style: TextStyle(
                      fontFamily: 'Signika',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 16.h,
                  )
                ]),
                color: accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.h)),
                minWidth: 104.w,
                height: 32.h,
                onPressed: () {
                  //read now
                }),
          ]),
          SvgPicture.asset(
            image,
            fit: BoxFit.cover,
            height: 120.h,
            width: 110.w,
          ),
        ],
      ),
    );
  }
}
