
import 'package:flutter/material.dart';
import 'package:flutter_project/components/my_current_location.dart';
import 'package:flutter_project/components/my_description_box.dart';
import 'package:flutter_project/components/my_drawer.dart';
import 'package:flutter_project/components/my_food_tile.dart';
import 'package:flutter_project/components/my_sliver_app_bar.dart';
import 'package:flutter_project/components/my_tab_bar.dart';
import 'package:flutter_project/model/food.dart';
import 'package:flutter_project/model/restaurant.dart';
import 'package:flutter_project/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin{

  // tab controller
  late TabController _tabController;

  void iniState(){
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  //sort out and return a list of food that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fulMenu) {
    return fulMenu.where((food) => food.category == category).toList();
  }

  //return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fulMenu){
    return FoodCategory.values.map((category) {

      //get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fulMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          //get invidual food
          final food = categoryMenu[index];

          //return food tile
          return FoodTile(
            food: food, 
            onTap: () => Navigator.push(context, MaterialPageRoute(
              builder: (context) => FoodPage(food: food),
              ),
              ),
              );
        },);
    }).toList();
  }
  @override
Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsSceolled) => [
          MySliverAppBar
          (title: MyTabBar(tabController: _tabController),child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                indent: 26,
                endIndent: 26,
                color: Theme.of(context).colorScheme.secondary,
              ),
            // my current location
            MyCurrentLocation(),

            //description box
            MyDescriptionBox()
            ],
          ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
          controller: _tabController,
          children: getFoodInThisCategory(restaurant.menu),
          ),
          ),
        ),
    );
    }
}