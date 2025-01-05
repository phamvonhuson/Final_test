
import 'package:flutter/foundation.dart';
import 'package:flutter_project/model/cart_item.dart';
import 'package:intl/intl.dart';
import 'food.dart';


class Restaurant  extends ChangeNotifier  {
  // list of food menu
  final List<Food> _menu =[
    //Pizza
    Food(
      name: "Cheese Pizza", 
      description: "A crispy  pizza with double cheese as normal", 
      imagePath: "lib/images/Pizza/cheese_pizza.jpg", 
      price: 10.99,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra sauce", price: 0.99),
        Addon(name: "Cheese", price: 0.69),
        Addon(name: "Mushroom", price: 0.89),
      ],
    ),
    Food(
      name: "Tuna Pizza", 
      description: "a crispy crust topped with savory tuna, Sweet red onions, and melted mozarella cheese", 
      imagePath: "lib/images/Pizza/tuna_pizza.jpg", 
      price: 10.99,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra sauce", price: 0.99),
        Addon(name: "Cheese", price: 0.69),
        Addon(name: "Mushroom", price: 0.89),
      ],
    ),    
    Food(
      name: "Sausage Pizza", 
      description: "a savoury classic featuring a dynamic combination of ingredients, including rich, gooey cheese and mouth-watering sausage", 
      imagePath: "lib/images/Pizza/sausage_pizza.jpg", 
      price: 10.99,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra sauce", price: 0.99),
        Addon(name: "Cheese", price: 0.69),
        Addon(name: "Mushroom", price: 0.89),
      ],
    ),    
    Food(
      name: "Veggie Pizza", 
      description: "A pizza made from crescent-roll dough and a cream cheesy spread", 
      imagePath: "lib/images/Pizza/veggie_pizza.jpg", 
      price: 10.99,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra sauce", price: 0.99),
        Addon(name: "Cheese", price: 0.69),
        Addon(name: "Mushroom", price: 0.89),
      ],
    ),
    //sides
    Food(
      name: "Avocado salad", 
      description: "A salad made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh herb dressing", 
      imagePath: "lib/images/sides/avocado_salad.jpg", 
      price: 10.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra veggie", price: 0.49),
        Addon(name: "Extra sauce", price: 0.19),
        Addon(name: "Extra size", price: 0.79),
      ],
    ),    
    Food(
      name: "Fruit salad", 
      description: "A dish consisting of various kinds of fruit", 
      imagePath: "lib/images/sides/Fruit_salad.jpg", 
      price: 10.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra veggie", price: 0.49),
        Addon(name: "Extra sauce", price: 0.19),
        Addon(name: "Extra size", price: 0.79),
      ],
    ),    
    Food(
      name: "Mechouia salad", 
      description: "A Tunisian salad made with grilled, coarsely chopped onions, peppers, tomatoes, and garlic, drizzled with olive oil and seasoned with caraway, salt, and black pepper", 
      imagePath: "lib/images/sides/mechouia_salad.jpg", 
      price: 10.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra veggie", price: 0.49),
        Addon(name: "Extra sauce", price: 0.19),
        Addon(name: "Extra size", price: 0.79),
      ],
    ),
    Food(
      name: "Tuna salad", 
      description: "A salad dish consisting of tuna and mayonnaise", 
      imagePath: "lib/images/sides/Tuna_Salad.jpg", 
      price: 10.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra veggie", price: 0.49),
        Addon(name: "Extra sauce", price: 0.19),
        Addon(name: "Extra size", price: 0.79),
      ],
    ),
    //desserts
    Food(
      name: "Coffee", 
      description: "A beverage brewed from roasted, ground coffee beans", 
      imagePath: "lib/images/desserts/coffee.jpg", 
      price: 10.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra food", price: 0.19),
        Addon(name: "Chocolate", price: 0.39),
        Addon(name: "Milk", price: 0.59),
      ],
    ),    
    Food(
      name: "Banana", 
      description: "A tapering tropical fruit with soft pulpy flesh enclosed in a soft usually yellow rind", 
      imagePath: "lib/images/desserts/banana.jpg", 
      price: 10.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra food", price: 0.19),
        Addon(name: "Chocolate", price: 0.39),
        Addon(name: "Milk", price: 0.59),
      ],
    ),    
    Food(
      name: "Watermelon", 
      description: "A flowering plant species of the Cucurbitaceae family and the name of its edible fruit", 
      imagePath: "lib/images/desserts/watermelon.jpg", 
      price: 10.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra sausage", price: 0.19),
        Addon(name: "Chocolate", price: 0.39),
        Addon(name: "Milk", price: 0.59),
      ],
    ),    
    Food(
      name: "Yogurt", 
      description: "A food produced by bacterial fermentation of milk", 
      imagePath: "lib/images/desserts/Yogurt.jpg", 
      price: 10.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra sausage", price: 0.19),
        Addon(name: "Chocolate", price: 0.39),
        Addon(name: "Milk", price: 0.59),
      ],
    ),
    //drinks
    Food(
      name: "champagne", 
      description: "A sparkling wine originated and produced in the Champagne wine region of France", 
      imagePath: "lib/images/drinks/champagne.jpg", 
      price: 10.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra ice", price: 0.09),
        Addon(name: "Extra drink", price: 0.69),
        Addon(name: "Extra sides food", price: 0.99),
      ],
    ),    
    Food(
      name: "Coca", 
      description: " A cola soft drink manufactured by the Coca-Cola Company", 
      imagePath: "lib/images/drinks/coca.jpg", 
      price: 10.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra ice", price: 0.09),
        Addon(name: "Extra drink", price: 0.69),
        Addon(name: "Extra sides food", price: 0.99),
      ],
    ),    
    Food(
      name: "Beers", 
      description: "An alcoholic drink made from yeast-fermented malt flavored with hops", 
      imagePath: "lib/images/drinks/beer.png", 
      price: 10.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra ice", price: 0.09),
        Addon(name: "Extra drink", price: 0.69),
        Addon(name: "Extra sides food", price: 0.99),
      ],
    ),    
    Food(
      name: "Cold water", 
      description: "Just a cold water", 
      imagePath: "lib/images/drinks/cold_water.jpg", 
      price: 0.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra ice", price: 0.09),
        Addon(name: "Extra drink", price: 0.09),
        Addon(name: "Extra sides food", price: 0.99),
      ],
    ),
    //sausage
    Food(
      name: "conecuh", 
      description: "A pork sausage made with natural hog casings", 
      imagePath: "lib/images/sausage/conecuh.jpg", 
      price: 10.99,
      category: FoodCategory.sausage,
      availableAddons: [
        Addon(name: "Extra bread ", price: 0.99),
        Addon(name: "Extra sauce", price: 0.69),
        Addon(name: "Add Size", price: 0.59),
      ],
    ),    
    Food(
      name: "Salchicha parrillera", 
      description: " A delicious Argentinean sausage made from a blend of beef and pork ", 
      imagePath: "lib/images/sausage/salchicha.jpg", 
      price: 10.99,
      category: FoodCategory.sausage,
      availableAddons: [
        Addon(name: "Extra bread ", price: 0.99),
        Addon(name: "Extra sauce", price: 0.69),
        Addon(name: "Add Size", price: 0.89),
      ],
    ),    
    Food(
      name: "Smoked sausage", 
      description: "A smoked meat dish consisting of sausage cooked via the indirect heat of woodsmoke", 
      imagePath: "lib/images/sausage/Smoke_Sausage.png", 
      price: 10.99,
      category: FoodCategory.sausage,
      availableAddons: [
        Addon(name: "Extra bread ", price: 0.99),
        Addon(name: "Extra sauce", price: 0.69),
        Addon(name: "Add Size", price: 0.89),
      ],
    ),    
    Food(
      name: "Special turkey breast sausage", 
      description: "A sausage made up of ground turkey, spices, and some form of fat", 
      imagePath: "lib/images/sausage/special_turkey_breast.jpg", 
      price: 10.99,
      category: FoodCategory.sausage,
      availableAddons: [
        Addon(name: "Extra bread ", price: 0.99),
        Addon(name: "Extra sauce", price: 0.69),
        Addon(name: "Add Size", price: 0.89),
      ],
    ),
    //spaghetti
    Food(
      name: "All'assassina", 
      description: "A Burnt, crispy, and spicy spaghetti", 
      imagePath: "lib/images/spaghetti/all'assassina.jpg", 
      price: 10.99,
      category: FoodCategory.spaghetti,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra meat", price: 0.69),
        Addon(name: "Extra spaghetti", price: 0.79),
      ],
    ),    
    Food(
      name: "Bolognese", 
      description: "A spaghetti (long strings of pasta) with an Italian ragù (meat sauce) made with minced beef, bacon and tomatoes, served with Parmesan cheese", 
      imagePath: "lib/images/spaghetti/bolognese.jpg", 
      price: 10.99,
      category: FoodCategory.spaghetti,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra meat", price: 0.69),
        Addon(name: "Extra spaghetti", price: 0.79),
      ],
    ),    
    Food(
      name: "Traditional", 
      description: "A pasta contain various herbs (especially oregano and basil), olive oil, meat, or vegetables", 
      imagePath: "lib/images/spaghetti/Traditional.jpg", 
      price: 10.99,
      category: FoodCategory.spaghetti,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra meat", price: 0.69),
        Addon(name: "Extra spaghetti", price: 0.79),
      ],
    ),    
  ];
  /*
  G E T T E R S
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*
  O P E R A T I O N S
 */

//user cart
final List<CartItem> _cart = [] ;

  // add to cart 
  void addToCart(Food food,List<Addon> selectedAddons){
    CartItem? cartItem = _cart .firstWhere((item){
      bool isSameFood = item.food == food;

      bool isSameAddons =listEquals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    // ignore: unrelated_type_equality_checks
    if (cartItem != false){
      cartItem.quantity++;
    }
    else{
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons),);
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity --;
      }
      else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount(){
    int totalItemCount = 0;

    for (CartItem cartItem in _cart){
      totalItemCount +=cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart 
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  /*
  H E L P E R S
 */

  //generate a receipt
  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt..");
    receipt.writeln();
  
  //format the date to include up to seconds only
  String formattedDate = 
  DateFormat('yyyy-MM-dd:mm:ss').format(DateTime.now());
  
  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln('-----');

  for (final cartItem in _cart){
    receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
    if (cartItem.selectedAddons.isNotEmpty) {
      receipt.writeln("  Add-ons: ${_formaAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
  }

  receipt.writeln("------");
  receipt.writeln();
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Items: ${_formatPrice(getTotalPrice())}");

  return receipt.toString();
  }
  //format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formaAddons(List<Addon> addon) {
    return addon
    .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(",");
  }
}