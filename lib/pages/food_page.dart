import 'package:flutter/material.dart';
import 'package:flutter_project/components/my_button.dart';
import 'package:flutter_project/model/food.dart';
import 'package:flutter_project/model/restaurant.dart';
import 'package:provider/provider.dart';
class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

   FoodPage({
    super.key, 
    required this.food,
    }){
      for (Addon addon in food.availableAddons){
        selectedAddons[addon] = false;
      }
    }

  @override
  State<FoodPage> createState() => _FoodPageState();
  }
  
  
  class _FoodPageState extends State<FoodPage> {
 
    void addToCart(Food food,Map<Addon, bool> selectedAddons){

      //close the current food page
      Navigator.pop(context);

      List<Addon> currentlySelectedAddons = [];
      for (Addon addon in widget.food.availableAddons) {
        if (widget.selectedAddons[addon] == true) {
          currentlySelectedAddons.add(addon);
        }
      }

      context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
    }


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //scaffold UI
      Scaffold(
      body: SingleChildScrollView(
      child: Column(
      children: [
        //food images
        Image.asset(widget.food.imagePath),

      Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //food name
          Text(widget.food.name,
           style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
            ),
            ),
            //food price
          Text(
            '\$${widget.food.price}',
            style:  TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 17
            ),
            ),
            const SizedBox(height: 10),
          //food description
          Text(
            widget.food.description
            ),
            const SizedBox(height: 10),

            Divider(color: Theme.of(context).colorScheme.secondary),

              const SizedBox(height: 10),

          //addon
          Container(
            decoration: BoxDecoration
            (border: Border.all(color: Theme.of(context).colorScheme.secondary),
            borderRadius: BorderRadius.circular(8),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: widget.food.availableAddons.length,
              itemBuilder: (context, index) {
                // get individual addon
                Addon addon =widget.food.availableAddons[index];
                    
                //return check box
                return CheckboxListTile(
                  title: Text(addon.name),
                  subtitle: Text('\$${addon.price}',style: TextStyle(color: Theme.of(context).colorScheme.primary,
                  ),
                  ),
                  value: widget.selectedAddons[addon], 
                  onChanged: (bool? value) {
                    setState(() {
                      widget.selectedAddons[addon] = value!;
                    });
                  }, 
                  );
              },
            ),
          )
        ],
        ),
      ),
        //button--> add to cart
        MyButton(
          text: "Add to cart",
         onTap: () => addToCart(widget.food, widget.selectedAddons),
         ),

         const SizedBox(height: 30),
      ],
      ),
    ),
    ),
      //back button
      SafeArea(
        child: Opacity(
          opacity: 0.6,
        child: Container(
          margin: const EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
            ),
        child: IconButton(icon: Icon(Icons.arrow_back_rounded),
        onPressed: () => Navigator.pop(context),
        ),
        ),
      ),
      ),
    ],
    );
  }
}
