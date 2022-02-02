import 'package:flutter/material.dart';

import 'package:kcal_app/presentation/widgets/recipe_item.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        RecipeItem(
          image: 'assets/images/favoriteRecipe1.svg',
          kcal: '250 Kcal',
          title: 'Chopped Spring Ramen',
          subtitle: 'Scallions & tomatoes',
          color: Color(0xffFDFEFD),
        ),
        RecipeItem(
          image: 'assets/images/favoriteRecipe2.svg',
          kcal: '450 Kcal',
          title: 'Chicken Tandoori',
          subtitle: 'Chicken & Salad',
          color: Color(0xffEFF7EE),
        ),
      ],
    );
  }
}
