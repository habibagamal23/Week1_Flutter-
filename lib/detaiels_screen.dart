import 'package:flutter/material.dart';

import 'homeScreeen.dart';

class FoodDetailsScreen extends StatefulWidget {
  final Food food;

  const FoodDetailsScreen({required this.food});

  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food.foodName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.food.imagePath, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              widget.food.foodName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              widget.food.foodDescription,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 10),
            Text(
              'Price: ${widget.food.price}',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(height: 20),

            // Row to display quantity, increment, and decrement buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Decrement Button
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: decrementQuantity,
                ),
                Text(
                  quantity.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                // Increment Button
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: incrementQuantity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
