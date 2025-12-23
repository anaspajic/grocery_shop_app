import 'package:flutter/material.dart';

// ignore: must_be_immutable

// GroceryItemTile is widget that represents a visual tile for displaying information about a grocery item
// This widget is designed to be used in a grid, and it takes several parameters to customize its appearance: itemName, itemPrice, imagePath, and color

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // image
              Image.asset(
                imagePath,
                height: 64,
              ),

              //item name
              Text(itemName),

              // MaterialButton widget is a button with a Material design
              // it can be used to create clickable elements and it provides a range of customization options

              //price + button
              MaterialButton(
                  onPressed: () {},
                  color: color,
                  child: Text('\$$itemPrice',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)))
            ],
          )),
    );
  }
}
