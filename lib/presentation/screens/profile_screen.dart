import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kcal_app/presentation/widgets/profile_widget_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFAFAFA),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15.h),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage(
                      'assets/images/profile.jpg',
                    ),
                    radius: 80.h,
                  ),
                  Positioned(
                    bottom: 5.h,
                    right: 5.w,
                    child: SvgPicture.asset(
                      'assets/images/profileIcon.svg',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                ],
              ),
            ),
            Text('Ahmed Moussa',
                style: TextStyle(
                  fontFamily: 'Signika',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0XFF272727),
                )),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0XFFA1A1A1),
              ),
            ),
            SizedBox(height: 16.h),
            const ProfileWidgetItem(
                image: 'assets/images/Profileprofile.svg',
                title: 'Edit Profile'),
            const ProfileWidgetItem(
                image: 'assets/images/ProfileStar.svg', title: 'Renew Plans'),
            const ProfileWidgetItem(
                image: 'assets/images/Profilesetting.svg', title: 'Settings'),
            Divider(
              endIndent: 32.w,
              indent: 32.w,
            ),
            const ProfileWidgetItem(
                image: 'assets/images/Profilepaper.svg',
                title: 'Terms & Privacy Policy'),
            const ProfileWidgetItem(
                image: 'assets/images/Profilelogout.svg', title: 'Log Out'),
          ],
        ),
      ),
    );
  }
}
