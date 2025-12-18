import 'package:flutter/material.dart';

class GridviewCountDemo extends StatelessWidget {
  const GridviewCountDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            Container(color: Colors.red,),
            Container(color: Colors.yellow,),
            Container(color: Colors.green,),
            Container(color: Colors.blue,),
            Container(color: Colors.orange,),
          ],
        ),
      ),
    );
  }
}
