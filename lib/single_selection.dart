import 'package:flutter/material.dart';

class SingleSelection extends StatefulWidget {
  const SingleSelection({super.key});

  @override
  State<SingleSelection> createState() => _SingleSelectionState();
}

class _SingleSelectionState extends State<SingleSelection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Single Selection"),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            selected: selectedIndex == index,
            selectedTileColor: Colors.blue,
            selectedColor: Colors.white,
            leading: Icon(selectedIndex == index ? Icons.person : Icons.account_balance),
            title: Text("Mohib, $selectedIndex"),
            subtitle: Text("Hello, How are you?, $index"),
            trailing: Text(selectedIndex == index ? "12/3/2025" :"4:00 PM"),
          );
        },),
    );
  }
}
