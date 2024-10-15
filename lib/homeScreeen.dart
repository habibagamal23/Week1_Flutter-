import 'package:flutter/material.dart';

class EcommerceHome extends StatelessWidget {
  final List<Food> foodItems = const [
    Food(
      imagePath: 'assets/s.jpg',
      foodName: 'Burger',
      foodDescription: 'A tasty and delicious burger.',
      price: '200\$',
    ),
    Food(
      imagePath: 'assets/ch.jpg',
      foodName: 'Pizza',
      foodDescription: 'A hot and cheesy pizza.',
      price: '250\$',
    ),
    Food(
      imagePath: 'assets/b.jpg',
      foodName: 'Sandwich',
      foodDescription: 'A healthy and filling sandwich.',
      price: '150\$',
    ),
    Food(
      imagePath: 'assets/b.jpg',
      foodName: 'Salad',
      foodDescription: 'A fresh and healthy salad.',
      price: '100\$',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:  Colors.deepPurple,
        elevation: 0,
        toolbarHeight: 80,
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/chrc.jpg'),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined, color: Colors.black),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('This is a notif!'))
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            DrawerHeader(
              decoration:
              BoxDecoration(color: Colors.deepPurple),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/chrc.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Mohamed',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home'),

            ),
            ListTile(
              title: const Text('Cart'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Categories'),
              onTap: () {},
            ),
          ],
        ),
      )
      ,
      // body (1-colum Text Text sizedBox )
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome, Mohamed",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
            ),

            const Text(
              "Choose Your Favourite Food",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black26),
            ),
            const Text(
              "Cova",
              style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color:  Colors.deepPurple),
            ),

            const SizedBox(height: 15),
            Container(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:  [
                  FoodItem(
                    food: foodItems[0] ,
                  ),
                  SizedBox(width: 15),
                  FoodItem(
                    food: foodItems[1] ,
                  ),
                  SizedBox(width: 15),
                  FoodItem(
                      food: foodItems[2]
                  ),
                  SizedBox(width: 15),
                  FoodItem(
                      food: foodItems[3]
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Lava",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                  color:  Colors.deepPurple),
            ),

            const SizedBox(height: 15),
            Container(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  final foodItem = foodItems[index];
                  return Row(
                    children: [
                      FoodItem(food: foodItem),
                      const SizedBox(width: 15),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Go to Cart" ,style:  TextStyle(fontSize: 16, fontWeight: FontWeight.bold , color: Colors.white), ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Food {
  final String imagePath;
  final String foodName;
  final String foodDescription;
  final String price;

  const Food({
    required this.imagePath,
    required this.foodName,
    required this.foodDescription,
    required this.price,
  });
}
class FoodItem extends StatelessWidget {
  final Food food;

  const FoodItem({
    required this.food,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),

      ),
      width: 200,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(food.imagePath, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 5),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    food.foodName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  Text(
                    food.foodDescription,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),

                  Text(
                    food.price,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color:  Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}