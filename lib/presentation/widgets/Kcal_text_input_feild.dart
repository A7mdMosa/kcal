import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KcalTextInputFeild extends StatelessWidget {
  const KcalTextInputFeild({
    Key? key,
    required this.title,
    required this.onSave,
    required this.validator,
    required this.obscureText,
  }) : super(key: key);

  final String title;
  final Function(String?) onSave;
  final String? Function(String?)? validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      child: TextFormField(
        obscureText: obscureText,
        style: TextStyle(
          fontFamily: 'Signika',
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black54,
        ),
        decoration: InputDecoration(
          labelStyle: TextStyle(fontSize: 15.sp),
          label: Text(
            title,
            style: TextStyle(
              fontFamily: 'Signika',
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff91C788),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xffB4C8AC),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: const Color(0xffB4C8AC), width: 3.w),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: Color(0xff91C788),
            ),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: validator,
        onSaved: onSave,
      ),
    );
  }
}
