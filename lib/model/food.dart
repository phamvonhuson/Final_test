class Food {
  final String name;           // sausage pizza
  final String description;    // pizza with double sausage
  final String imagePath;      // lib/images/pizza.png
  final double price;          // 10.99
  final FoodCategory category; // Pizza
  List<Addon>availableAddons;



  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.availableAddons,
    required this.category,
  });
}
// food catogries
enum FoodCategory{
  pizza,
  spaghetti,
  sausage,
  drinks,
  sides,
  desserts,
}
// food addons
class Addon{
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
   });
}