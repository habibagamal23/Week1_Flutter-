import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.green,
          centerTitle: true,
          actions: [
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                  padding:  EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: Text("mohamed"),
                  )),
              Text("Cart")
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text("habiba")),
            ),
            Image.network(
              'https://th.bing.com/th/id/OIP.yV7UD71z99C-CsDhS_kPkwAAAA?rs=1&pid=ImgDetMain',
              height: 100,
              width: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  print("is pressed");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 6)),
                child: Text("next step")),
            IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
            TextButton(onPressed: () {}, child: Text("go")),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/OIP.jpg"),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                width: 100,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Text("habiba"),
                    Text("habiba"),
                  ],
                ),
              ),
              elevation: 10,
            )
          ],
        ));
  }
}
