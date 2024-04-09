import 'package:flutter/material.dart';
import 'package:meals_app/Models/meals.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatefulWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;

  @override
  State<MealItem> createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){},
        child: Stack(
          children: [
            FadeInImage(placeholder: MemoryImage(kTransparentImage), image: NetworkImage(Meal.imageUrl))),
          ],
        ),
      ),
    )
  }
}
