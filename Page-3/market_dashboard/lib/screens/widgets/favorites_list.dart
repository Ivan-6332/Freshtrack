import 'package:flutter/material.dart';

class FavoritesList extends StatelessWidget {
  const FavoritesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> favorites = ["Carrot", "Cabbage", "Tomato"];

    return Column(
      children: favorites.map((item) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Icon(Icons.emoji_food_beverage, color: Colors.green),
              const SizedBox(width: 16),
              Text(
                item,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
