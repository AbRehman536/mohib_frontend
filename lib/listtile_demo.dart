import 'package:flutter/material.dart';

class ListtileDemo extends StatelessWidget {
  const ListtileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return  Card(
              color: Colors.white60,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Mohib"),
                subtitle: Text("Hello, How are you?"),
                trailing: Text("12/2/2025"),
              ),
            );
          },
        ),
      ),
    );
  }
}
