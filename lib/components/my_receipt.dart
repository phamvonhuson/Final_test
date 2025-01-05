import 'package:flutter/material.dart';
import 'package:flutter_project/model/restaurant.dart';
import 'package:provider/provider.dart';
class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 25, right: 25,bottom: 25, top: 75),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Thank you for your order!"),
          const SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(25),
            child: Consumer<Restaurant>(builder: (context, restaurant, child) => 
            Text(restaurant.displayCartReceipt())),
          ),
          const SizedBox(height:25),
          const Text('Estiminated delivery is: 6:10 PM'),
        ],
      ),
    ),
    );
  }
}