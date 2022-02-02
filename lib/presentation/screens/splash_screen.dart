import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kcal_app/presentation/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splashScreen.route';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
    ).then(
      (value) => Navigator.pushReplacementNamed(context, WelcomeScreen.route),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff537345),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Center(
          child: SvgPicture.asset(
            'assets/images/kcal.svg',
            fit: BoxFit.cover,
            height: 50.h,
            width: 100.w,
          ),
        ),
      ),
    );
  }
}
