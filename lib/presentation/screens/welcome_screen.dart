import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kcal_app/presentation/widgets/kcal_button.dart';

import '../widgets/welcome_card.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String route = '/welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentPage = 0;

  final welcomeCards = [
    const WelcomeCard(
      image: 'assets/images/welcomeCard1.svg',
      headline: 'Eat Healthy',
      description:
          'Maintaining good health should be the primary focus of everyone.',
    ),
    const WelcomeCard(
      image: 'assets/images/welcomeCard2.svg',
      headline: 'Healthy Recipes',
      description:
          'Browse thousands of healthy recipes from all over the world.',
    ),
    const WelcomeCard(
      image: 'assets/images/welcomeCard3.svg',
      headline: 'Track Your Health',
      description: 'With amazing inbuilt tools you can track your progress.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 24.h,
                  left: 108.w,
                  right: 108.w,
                ),
                child: SvgPicture.asset(
                  'assets/images/kcal.svg',
                  fit: BoxFit.cover,
                  height: 34.h,
                  width: 68.w,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: 6.h, bottom: 12.h, right: 52, left: 52),
                  height: 437.h,
                  width: 272.w,
                  child: PageView.builder(
                      itemCount: welcomeCards.length,
                      onPageChanged: (index) {
                        setState(() {
                          currentPage = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return welcomeCards[index];
                      })),
              DotsIndicator(
                dotsCount: welcomeCards.length,
                position: currentPage.toDouble(),
                decorator: DotsDecorator(
                  spacing: EdgeInsets.symmetric(horizontal: 4.w),
                  color: const Color(0xffACC7A8),
                  size: Size(12.h, 8.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  activeColor: const Color(0xff83C867),
                  activeSize: Size(20.h, 10.w),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 42.h,
              ),
              KcalButton(
                title: 'Sign Up',
                onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.route,
                      arguments: 'signup');
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have An Acount?',
                    style: TextStyle(
                      fontFamily: 'Signika',
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.route,
                          arguments: 'login');
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontFamily: 'Signika',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff91C788),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
