import 'package:flutter/material.dart';
import 'package:flutter_project/model/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({
    super.key,
   required this.food, 
   required this.onTap,
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(child: Column(
                children: [
                  Text(food.name),
                  Text('\$${food.price}', 
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary
                    )
                    ,),
                    const SizedBox(height: 10),
                  Text(food.description),
                ],
              ),
              ),

              //food images
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(food.imagePath, height: 130),
                ),
            ],
          ),
        ),
        //divider line
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 26,
          indent: 26,
        )
      ],
    );
  }
}