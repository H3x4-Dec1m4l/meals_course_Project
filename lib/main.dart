import 'package:flutter/material.dart';
// import 'package:meals/models/category.dart';
import 'screens/categories_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
 import 'screens/categories_screen.dart';
 import 'utils/app_routes.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromARGB(255, 226, 119, 140),
        textTheme: ThemeData.light().textTheme.copyWith(
          subtitle1: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed'
          )
        )
      ),
      // home: CategoriesScreen(),
      routes: {
        AppRoutes.HOME : (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
    );
  }
}
  