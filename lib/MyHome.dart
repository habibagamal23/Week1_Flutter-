import 'package:flutter/material.dart';

import 'ModelItemfood.dart';

class Myhome extends StatelessWidget {
   Myhome({super.key});
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
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 80,
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(""),
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "wlcome Moahmed",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            "choose your fevarite food ",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 20),
          ),
          Text(
            "Cove ",
            style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 35),
          ),
          Container(
            height: 300,

            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
              return Container(
                margin: EdgeInsets.all(10),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   ClipRRect(
                     child:  Image.asset(myfoods[i].img! , width: 150,),
                     borderRadius: BorderRadius.circular(30),
                   ),
                    SizedBox(height: 5,),
                    Container(
                      width: 150,
                      child: Card(
                        child: Column(
                          children: [
                            Text(myfoods[i].title!),
                            SizedBox(height: 5,),
                            Text(myfoods[i].dec!),
                            SizedBox(height: 5,),
                            Text(myfoods[i].price!)],


                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
