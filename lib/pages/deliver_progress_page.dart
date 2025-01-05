import 'package:flutter/material.dart';
import 'package:flutter_project/components/my_receipt.dart';

class DeliverProgressPage extends StatelessWidget {
  const DeliverProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Delivery in progress..."),
    backgroundColor: Colors.transparent,
    ),
    bottomNavigationBar:  _buildBottomNavBar(context),
    body: Column(
      children: const [
        MyReceipt(),
      ],
    ),
    );
  }

  //custom navbar
  Widget _buildBottomNavBar(BuildContext context){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        )
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),
          const SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shoppee",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                ),
                Text(
                "Me",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  ),
                  ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message),
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          const SizedBox(width: 10),

          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
              color: Colors.green,
            ),
          ),
            ],
          )
        ],
      ),
    );
  }
}