import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kcal_app/presentation/widgets/kcal_button.dart';

import 'food_screen.dart';
import 'recipe_screen.dart';

enum Favorite { food, recipes }

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  Favorite favorite = Favorite.food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Favorites',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xffFAFAFA),
      ),
      body: Padding(
          padding: EdgeInsets.only(bottom: 20.h, right: 30.w, left: 30.w),
          child: Column(
            children: [
              SizedBox(
                height: 48.h,
                width: 314.w,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          favorite = Favorite.food;
                        });
                      },
                      child: Container(
                        height: 48.h,
                        width: 157.w,
                        decoration: BoxDecoration(
                          color: favorite == Favorite.food
                              ? const Color(0XFFFF8473)
                              : const Color(0XFFFFF8EE),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.h),
                            bottomLeft: Radius.circular(15.h),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Food',
                            style: TextStyle(
                              fontFamily: 'Signika',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: favorite == Favorite.food
                                  ? const Color(0XFFFFF8EE)
                                  : const Color(0XFFFF8473),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          favorite = Favorite.recipes;
                        });
                      },
                      child: Container(
                        height: 48.h,
                        width: 157.w,
                        decoration: BoxDecoration(
                            color: favorite == Favorite.food
                                ? const Color(0XFFFFF8EE)
                                : const Color(0XFFFF8473),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.h),
                              bottomRight: Radius.circular(15.h),
                            )),
                        child: Center(
                          child: Text(
                            'Recipes',
                            style: TextStyle(
                              fontFamily: 'Signika',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: favorite == Favorite.food
                                  ? const Color(0XFFFF8473)
                                  : const Color(0XFFFFF8EE),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: favorite == Favorite.food
                      ? const FoodScreen()
                      : const RecipeScreen(),
                ),
              ),
              KcalButton(
                  title: favorite == Favorite.food
                      ? 'Search Food'
                      : 'Search Recipes',
                  onPressed: () {
                    //Search Food Or Ricepes
                  })
            ],
          )),
    );
  }
}
