import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String name;
  final String email;
  const Screen2({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Text(name.toString(),style: TextStyle(fontSize: 20),),
          Text(email.toString(),style: TextStyle(fontSize: 30),),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Go to Screen 1")),
        ],
      ),
    );
  }
}
