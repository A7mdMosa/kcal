import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kcal_app/presentation/widgets/favorite_grid.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1 / 1,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
      ),
      children: const [
        FavouriteGrid(
          color: Color(0xffFFF8EE),
          image: 'assets/images/favoriteCupcake.svg',
        ),
        FavouriteGrid(
          color: Color(0xffFFF5CC),
          image: 'assets/images/favoriteHamburger.svg',
        ),
        FavouriteGrid(
          color: Color(0xFFFFECD2),
          image: 'assets/images/favoritePizza.svg',
        ),
        FavouriteGrid(
          color: Color(0xFFFAD6D1),
          image: 'assets/images/favoriteHotdog.svg',
        ),
        FavouriteGrid(
          color: Color(0xFFFFF8EB),
          image: 'assets/images/favoriteAddFood.svg',
        ),
      ],
    );
  }
}
