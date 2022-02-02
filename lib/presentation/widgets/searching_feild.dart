import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../kcal_icons.dart';

class SearchingField extends StatelessWidget {
  const SearchingField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff666666),
      style: TextStyle(
        fontFamily: 'Signika',
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff666666),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 23.h),
        prefixIcon: Icon(
          Icons.search,
          size: 25.h,
          color: const Color(0XFFADADAD),
        ),
        suffixIcon: Icon(
          Kcal.close,
          size: 25.h,
          color: const Color(0XFFADADAD),
        ),
        hintText: 'Search recipes, articles, people...',
        hintStyle: TextStyle(
          fontFamily: 'Signika',
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff999999),
        ),
        filled: true,
        fillColor: const Color(0XFFF4F4F4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.h),
          borderSide: const BorderSide(
            color: Color(0xffF4F4F4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.h),
          borderSide: BorderSide(color: const Color(0xffF4F4F4), width: 3.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.h),
          borderSide: const BorderSide(
            color: Color(0xffF4F4F4),
          ),
        ),
      ),
    );
  }
}
