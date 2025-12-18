import 'package:flutter/material.dart';

class GridViewMax extends StatelessWidget {
  const GridViewMax({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Max"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: 17,
        itemBuilder: (BuildContext context, int index) {
            return Container(color: Colors.red,);
        },
          ),
    );
  }
}
