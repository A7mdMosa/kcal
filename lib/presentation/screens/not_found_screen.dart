import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              //'assets/images/searchNoResult.svg',
              // 'assets/images/favoriteNotFound.svg',
              height: 95.h,
              width: 105.w,
              fit: BoxFit.cover,
            ),
            Text(
              title,
              //'No Results Found',
              //'No Foods Found',
              // 'No Recipes Found',
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff696969),
              ),
            ),
            Text(
              subtitle,
              //'Try searching for a different keywork or tweek your search a little.',
              //'You don’t save any food. Go ahead, search and save your favorite food.',
              //'You don’t save any recipes. Go ahead, search and save your favorite recipe.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xffA9A9A9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
