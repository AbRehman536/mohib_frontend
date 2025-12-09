import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text("Login"),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.grey,
              filled: true,
              label: Text("Email"),
              hint: Text("type your email here"),
              prefixIcon: Icon(Icons.email),
              suffix: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            ),
          ),
          SizedBox(height: 10,),
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
          ElevatedButton(onPressed: () {  }, child: Text("Login"),),
          TextButton(onPressed: (){}, child: Text("Sign Up"))
        ],),
      ),
    );
  }
}
