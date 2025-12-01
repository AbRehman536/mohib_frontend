import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 30,),
        title: Text("Row Column",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.purple
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.settings,color: Colors.yellow,size: 35,),
          Icon(Icons.notifications,color: Colors.green,size: 40,),
          Icon(Icons.call,color: Colors.orange,size: 45,),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Abdullah Rehman"),
            Text("25"),
            Text("034865378"),
            Text("Sky Coaching"),
            Text("Rawalpindi"),
          ],
        ),
      ),
    );
  }
}
