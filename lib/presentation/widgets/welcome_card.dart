import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    Key? key,
    required this.image,
    required this.headline,
    required this.description,
  }) : super(key: key);

  final String image;
  final String headline;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          fit: BoxFit.cover,
          height: 280.h,
          width: 266.w,
        ),
        SizedBox(
          height: 25.h,
        ),
        Text(
          headline,
          style: TextStyle(
            fontFamily: 'Signika',
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Signika',
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
