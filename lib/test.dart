import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weekone/ModelItemfood.dart';

class Test extends StatelessWidget {
  Test({super.key});

  List<FoodItem> myfoods = [
    FoodItem('bergur ', "it good ", "assets/OIP.jpg", '200'),
    FoodItem('bergur1 ', "it good ", "assets/OIP.jpg", '200'),
    FoodItem('bergur 2', "it good ", "assets/OIP.jpg", '200'),
    FoodItem('bergur 3', "it good ", "assets/OIP.jpg", '200'),
    FoodItem('bergur 4', "it good ", "assets/OIP.jpg", '200'),
    FoodItem('bergur 4', "it good ", "assets/OIP.jpg", '200'),
    FoodItem('bergur 5', "it good ", "assets/OIP.jpg", '200'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Wlcome Habiba"),
            Container(
              height: 500,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: myfoods.length,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Text(myfoods[index].title!),
                      SizedBox(
                        height: 10,
                      ),
                      Text(myfoods[index].dec!),
                      SizedBox(height: 10,),
                      Image.asset(myfoods[index].img!)
                    ]);
                  }),
            )
          ]),
    );
  }
}
