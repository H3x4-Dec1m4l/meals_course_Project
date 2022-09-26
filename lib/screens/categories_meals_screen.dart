import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
import '../components/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
/*   const CategoriesMealsScreen({Key? key}) : super(key: key); */





  @override
  Widget build(BuildContext context) {      
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    final categoriesMeals = DUMMY_MEALS.where((meals){
      return meals.categories.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: categoriesMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(categoriesMeals[index]);
            },
        ),
      ),
    );
  }
}