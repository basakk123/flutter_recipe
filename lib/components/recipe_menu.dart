import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  RecipeMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildmenuitem(Icons.food_bank, "ALL"),
          SizedBox(width: 25),
          _buildmenuitem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25),
          _buildmenuitem(Icons.fastfood, "Burger"),
          SizedBox(width: 25),
          _buildmenuitem(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }

  Widget _buildmenuitem(IconData micon, String mtext) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            micon,
            color: Colors.redAccent,
            size: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            mtext,
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
