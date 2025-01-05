import 'package:flutter/material.dart';
import 'package:flutter_project/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        //cart button
        IconButton( 
        onPressed:() {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => const CartPage(),
          ),
          );
        },
         icon: Icon(Icons.add_shopping_cart_outlined),
         )
      ],
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            foregroundColor: Theme.of(context).colorScheme.surface,

      title: Text("Fine Dinner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 45.0),
        child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0,top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}