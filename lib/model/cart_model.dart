import 'package:flutter/material.dart';

// CartModel class extends ChangeNotifier
// this means that instances of CartModel can be used as providers to notify listeners
// we use it as a provider to manage the state related to the shopping cart
// HomePage and GroceryItemTile widgets are connected to the CartModel using the Consumer widget, allowing them to react to changes in the shopping cart state and update the UI accordingly

class CartModel extends ChangeNotifier {
  // list of items on sale
  // we store information that we need to form GroceryItemTiles here

  final List _shopItems = [
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green[300]],
    ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
    ["Bread", "2.00", "lib/images/bread.png", Colors.amber[800]],
    ["Water", "1.00", "lib/images/water.png", Colors.blue[300]],
  ];

  get shopItems => _shopItems;

  // add item to cart
}
