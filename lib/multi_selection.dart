import 'package:flutter/material.dart';

class MultiSelection extends StatefulWidget {
  const MultiSelection({super.key});

  @override
  State<MultiSelection> createState() => _MultiSelectionState();
}

class _MultiSelectionState extends State<MultiSelection> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){
              setState(() {
                if(selectedIndex.contains(index)){
                  selectedIndex.remove(index);
                }else{
                  selectedIndex.add(index);
                }
              });
            },
            tileColor: selectedIndex.contains(index) ? Colors.blue : Colors.white,
            textColor: selectedIndex.contains(index) ? Colors.white : Colors.black,
            iconColor: selectedIndex.contains(index) ? Colors.white : Colors.black,
            leading: Icon(selectedIndex.contains(index) ? Icons.person : Icons.person_3_rounded),
            title: Text("Mohib,$selectedIndex"),
            subtitle: Text("How are you?,$index"),
            trailing: Text(selectedIndex.contains(index) ? "12/8/2025": "12:40 PM"),
          );
        },),
    );
  }
}
