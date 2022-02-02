import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kcal_app/presentation/widgets/feed_card_widget.dart';
import 'package:kcal_app/presentation/widgets/feed_favorite_widget.dart';

class YourFeedScreen extends StatefulWidget {
  const YourFeedScreen({Key? key}) : super(key: key);
  @override
  State<YourFeedScreen> createState() => _YourFeedScreenState();
}

class _YourFeedScreenState extends State<YourFeedScreen> {
  int currentPage = 0;
  final _auth = FirebaseAuth.instance;

  final feedCards = [
    const FeedCardWidget(
      title: 'The pros and \n cons of fast food.',
      image: 'assets/images/feedCockies.svg',
      backgroundColor: Color(0xffFBEAE8),
      accentColor: Color(0xffFF8473),
    ),
    const FeedCardWidget(
      title: 'Fruit and \nVegetable Juice',
      image: 'assets/images/feedJuice.svg',
      backgroundColor: Color(0xffCBDEB9),
      accentColor: Color(0xff76A930),
    ),
    const FeedCardWidget(
      title: 'Leafy Green \n Vegetables',
      image: 'assets/images/feedHealthy.svg',
      backgroundColor: Color(0xffFAC8BE),
      accentColor: Color(0xffFA6E51),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 46.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${_auth.currentUser!.email!.substring(0, 6)}..,',
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 25.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff91C788),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Find, track and eat heathy food.',
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff7B7B7B),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(
              height: 169.h,
              width: 320.w,
              child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemCount: feedCards.length,
                  itemBuilder: (context, index) {
                    return feedCards[index];
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: DotsIndicator(
                dotsCount: feedCards.length,
                position: currentPage.toDouble(),
                decorator: DotsDecorator(
                  spacing: EdgeInsets.symmetric(horizontal: 4.w),
                  color: feedCards[currentPage].backgroundColor,
                  size: Size(12.h, 8.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  activeColor: feedCards[currentPage].accentColor,
                  activeSize: Size(20.h, 10.w),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(18.h),
              height: 88.h,
              width: 320.w,
              decoration: BoxDecoration(
                color: const Color(0xffA3A0CA),
                borderRadius: BorderRadius.circular(20.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Track Your \n Weekly Progress',
                    style: TextStyle(
                      fontFamily: 'Signika',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  MaterialButton(
                      child: Row(children: [
                        Text(
                          'View Now',
                          style: TextStyle(
                            fontFamily: 'Signika',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffA3A0CA),
                          ),
                        ),
                        Icon(
                          Icons.play_arrow_rounded,
                          color: const Color(0xffA3A0CA),
                          size: 16.h,
                        )
                      ]),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.h)),
                      minWidth: 104.w,
                      height: 32.h,
                      onPressed: () {
                        //View now
                      }),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0.h),
                  child: Text(
                    'Choose Your Favorites',
                    style: TextStyle(
                      fontFamily: 'Signika',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.h,
                  width: 375.w,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      FeedFavouriteWidget(
                        backgroundColor: Color(0xffFFF2F0),
                        image: 'assets/images/favoriteFruits.svg',
                        text: 'Fruits',
                        textColor: Color(0xff4D0A00),
                      ),
                      FeedFavouriteWidget(
                        backgroundColor: Color(0xffEFF7EE),
                        image: 'assets/images/favoriteVegetables.svg',
                        text: 'Vegetables',
                        textColor: Color(0xff1C3418),
                      ),
                      FeedFavouriteWidget(
                        backgroundColor: Color(0xffFFF8EE),
                        image: 'assets/images/favoriteCupcake.svg',
                        text: 'Cupcake',
                        textColor: Color(0xff522E2A),
                      ),
                      FeedFavouriteWidget(
                        backgroundColor: Color(0xffFFF5CC),
                        image: 'assets/images/favoriteHamburger.svg',
                        text: 'Hamburger',
                        textColor: Color(0xff705110),
                      ),
                      FeedFavouriteWidget(
                        backgroundColor: Color(0xFFFFECD2),
                        image: 'assets/images/favoritePizza.svg',
                        text: 'Pizza',
                        textColor: Color(0xff866623),
                      ),
                      FeedFavouriteWidget(
                        backgroundColor: Color(0xFFEDE1CE),
                        image: 'assets/images/favoriteCookies.svg',
                        text: 'Cookies',
                        textColor: Color(0xff533F1F),
                      ),
                      FeedFavouriteWidget(
                        backgroundColor: Color(0xFFFAD6D1),
                        image: 'assets/images/favoriteHotdog.svg',
                        text: 'Hot Dog',
                        textColor: Color(0xff5F5650),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
