import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Container(
          color: Colors.yellow,
          child: Image.network("https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/396e9/MainBefore.jpg",
          width: 400,height: 300,fit: BoxFit.fill,),
        ),
        Image.asset("assets/images/first.jpg",
        width: 400,height: 300, fit: BoxFit.fill,),
      ],),
    );
  }
}
