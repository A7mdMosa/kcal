import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kcal_app/presentation/widgets/searching_feild.dart';

import 'package:kcal_app/presentation/widgets/trending_line_widget.dart';
import 'package:kcal_app/presentation/widgets/trending_pic_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final trendingList = const [
    TrendingLinesWidget(
      title: 'best vegetable recipes',
    ),
    TrendingLinesWidget(
      title: 'cool season vegetables',
    ),
    TrendingLinesWidget(
      title: 'chicken recipes with eggs',
    ),
    TrendingLinesWidget(
      title: 'soups',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 24.h, right: 24.w, left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchingField(),
          Padding(
            padding: EdgeInsets.only(right: 5.w, top: 24.h, bottom: 16.h),
            child: Text(
              'Hot Now',
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 240.h,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                TrendingPicWidget(
                  title: 'The Pumkins Secrets',
                  subtitle: 'The Pumkins Secrets',
                  image: 'assets/images/feedPumkins.png',
                ),
                TrendingPicWidget(
                  title: 'Green Secrets',
                  subtitle: 'Green Secrets',
                  image: 'assets/images/feedGreen.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.w, top: 24.h, bottom: 16.h),
            child: Text(
              'Trending',
              style: TextStyle(
                fontFamily: 'Signika',
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return trendingList[index];
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: trendingList.length),
          ),
        ],
      ),
    ));
  }
}

//TODO: make the search working.



