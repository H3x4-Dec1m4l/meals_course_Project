import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';
import '../models/meal.dart';
import '../utils/app_routes.dart';

class MealItem extends StatelessWidget {
  // const MealItem({Key? key}) : super(key: key);
  final Meal meal;

  const MealItem(this.meal);

  void _selectedMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.MEAL_DETAIL,
      arguments: meal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>_selectedMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Stack(
            /* widget que permite colocar coisas sobre as outras, 
           usando no momento para poder colcoar o texto sobre as imagens*/
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  meal.imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                /* posicionando o texto na parte de baixo 
              direita da imagem */
                bottom: 20,
                right: 10,
                child: Container(
                  width: 300,
                  color: Color.fromARGB(73, 0, 0, 0),
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  child: Text(
                    meal.title,
                    style: const TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                   const Icon(Icons.schedule),
                    SizedBox (
                      width: 6,
                    ),
                    Text('${meal.duration} min')
                  ],
                ),
                Row(
                  children: [
                   const Icon(Icons.work),
                    SizedBox(
                      width: 6,
                    ),
                    Text(meal.ComplexityText),
                  ],
                ),
                Row(
                  children: [
                   const Icon(Icons.attach_money),
                    SizedBox(
                      width: 6,
                    ),
                    Text(meal.costText),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
