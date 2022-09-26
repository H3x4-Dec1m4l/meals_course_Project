import 'package:flutter/material.dart';

import '../models/category.dart';
// import '../screens/categories_meals_screen.dart';
import '../utils/app_routes.dart';




class CategoryItem extends StatelessWidget {
  /* const CategoryItem({Key? key}) : super(key: key); */
  final Category category;

  const CategoryItem(this.category);

  void _selectedCategory(BuildContext context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_){
    //       return CategoriesMealsScreen(category);
    //     }
    //   )
    // );

    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
      );
      
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>  _selectedCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.pink,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style:Theme.of(context).textTheme.subtitle1,      
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.5),
            category.color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}