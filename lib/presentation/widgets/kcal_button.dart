import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KcalButton extends StatelessWidget {
  const KcalButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Signika',
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        color: const Color(0xff91C788),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minWidth: 270.w,
        height: 65.h,
        onPressed: onPressed);
  }
}
