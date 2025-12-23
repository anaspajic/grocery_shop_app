import 'package:flutter/material.dart';
import '../components/grocery_item_tile.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';
import 'cart_page.dart';

// HomePage is main page of our app we access it from IntroPage
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // FloatingActionButton is a circular button typically positioned near the bottom right corner of the screen
      // it is commonly used to represent a primary action or to provide quick access to a specific feature within the app

      // common use cases:
      // navigation: Launching a new screen or page
      // adding Items to a List: Triggering the addition of new items to a list or collection
      // starting an Action: Initiating a primary action within the app
      // accessing a Menu: Opening a menu for additional options
      // floating Action Button Animations: Providing animations or transformations when the button is pressed

      // this floating action button, when pressed, navigates to the CartPage

      floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CartPage();
              })),
          backgroundColor: Colors.black,
          child: const Icon(Icons.shopping_bag)),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 48,
            ),

            // good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Good morning,",
                style: TextStyle(fontSize: 20),
              ),
            ),

            const SizedBox(
              height: 4,
            ),

            // let's order fresh items for you
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's order fresh items for you",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // Divider widget is used to create a horizontal line, or divider, between different sections of content
            // it is commonly used to visually separate different portions of a user interface, providing a visual break between elements

            // divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),

            const SizedBox(
              height: 40,
            ),
            // fresh items + grid
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Fresh Items",
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),

            // Expanded widget in Flutter is used to give a child widget the maximum available space along a particular axis within a parent widget
            // it's typically used in a Column or Row to control how the available space is distributed among its children

            // grid
            Expanded(
              // Consumer widget is a part of the provider package and is designed to listen to changes in a specified provider and rebuild its child widget when the provider's state changes
              // Consumer ensures that its child widget (in this case, the GridView.builder) is rebuilt only when the specified provider (CartModel) changes
              // This is a way to efficiently rebuild parts of the widget tree that depend on specific pieces of data
              // The value parameter inside the builder function represents the current state of the CartModel, and the GroceryItemTile widgets inside the GridView.builder are constructed based on the items in the CartModel

              child: Consumer<CartModel>(builder: (context, value, child) {
                // GridView widget is used to create a scrollable grid of widgets
                // it allows you to arrange its children in a two-dimensional grid, making it suitable for displaying collections of items in a grid layout

                return GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: const EdgeInsets.all(12),

                    // gridDelegate: Defines the grid layout
                    // here we used, SliverGridDelegateWithFixedCrossAxisCount which creates a grid with a fixed number of columns

                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.3),

                    // itemBuilder: A callback function that builds a widget for each item in the grid
                    // it takes an index and returns a GroceryItemTile widget

                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                      );
                    });
              }),
            )
          ],
        ),
      ),
    );
  }
}
