import 'package:flutter/material.dart';
import 'package:mohib_frontend/passing%20parameters/screen)_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        backgroundColor: Colors.blue,
      ),
      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(
          name : "Mohib", email : "mohib@gmail.com"
        )));
      }, child: Text("Go to Screen 2")),
    );
  }
}
