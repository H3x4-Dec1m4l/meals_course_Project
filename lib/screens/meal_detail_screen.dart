import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  /* const MealDetailScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: [
          Container(/* imagem da comida */
            height: 300,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(/* mostra o titulo para apresentar os ingredientes */
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingredientes',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Container( /* parte que mostra os ingredientes */
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            width: 200,
            height: 300,
            decoration:  BoxDecoration(
              color: Color.fromARGB(135, 240, 230, 178),
              border: Border.all(color: Color.fromARGB(255, 117, 64, 64)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
              itemCount: meal.ingredients.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: Padding(
                    padding:  const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(meal.ingredients[index]),
                  ),
                  color: Color.fromARGB(69, 133, 62, 86),
                );
              }
              )
          ),
        ],
      ),
    );
  }
}
