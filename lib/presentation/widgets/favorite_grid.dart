import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteGrid extends StatelessWidget {
  const FavouriteGrid({Key? key, required this.color, required this.image})
      : super(key: key);
  final Color color;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.h),
          color: color,
        ),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.contain,
        ));
  }
}
