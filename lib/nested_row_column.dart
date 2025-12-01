import 'package:flutter/material.dart';

class NestedRowColumn extends StatelessWidget {
  const NestedRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Nested Row Column"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        SizedBox(height: 10,),
        Text("Lorem Ipsum",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
        SizedBox(height: 15,),
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Icon(Icons.favorite),
          Icon(Icons.comment),
          Icon(Icons.bookmark),
          Icon(Icons.share),
        ],)
      ],),
    );
  }
}
