import 'package:flutter/material.dart';

class GridViewFixed extends StatelessWidget {
  const GridViewFixed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Fixed"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: 17,
        itemBuilder: (BuildContext context, int index) {
            return Container(color: Colors.red,);
        },
          ),
    );
  }
}
