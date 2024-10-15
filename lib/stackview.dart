import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue,
          child:  Image.asset('assets/OIP.jpg'),
          ),
          Positioned(
            top: 70,
            left: 30,
            right: 30,
            child: Icon(Icons.chat , size: 89,)
          ),
          Positioned(
              left: 100,
              right: 100,
              bottom: 100,
              child: Text("wlcome" , style: TextStyle(
                color: Colors.white,
                fontSize: 35
              ),)
          )
        ],
      ),
    );
  }
}
