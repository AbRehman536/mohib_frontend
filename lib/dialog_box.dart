import 'package:flutter/material.dart';

class DialogBoxDemo extends StatelessWidget {
  const DialogBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              fillColor: Colors.grey,
              filled: true,
              label: Text("Email"),
              hint: Text("type your email"),
              prefixIcon: Icon(Icons.email),
              suffix: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
              )
          ),),
        TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              fillColor: Colors.grey,
              filled: true,
              label: Text("Password"),
              hint: Text("type your password here"),
              prefixIcon: Icon(Icons.lock),
              suffix: Icon(Icons.visibility),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
              )
          ),),
        ElevatedButton(onPressed: (){
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Thank You!"),
                content: Text("Login Successfully"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Back")),
                  TextButton(onPressed: (){}, child: Text("Next")),
                ],
              );
            },);
        }, child: Text("Login")),
        ElevatedButton(onPressed: (){
          showModalBottomSheet(
            isDismissible: false,
              context: context,
            builder: (BuildContext context) {
                return Column(children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.cancel)),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Register User"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("Reset Password"),
                    ),
                  ),
                ],);
            },);
        }, child: Text("More Options"))
      ],),
    );
  }
}
