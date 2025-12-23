import 'package:flutter/material.dart';

class MenuDemo extends StatelessWidget {
  const MenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Settings"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Profile"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Linked Device"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Logout"))),
              ];
            },)
        ],
      ),
      drawer: Container(
        width: 200, height: 300,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                  color: Colors.blue,
                  height: 100,
                  child: DrawerHeader(child: Text("My App Drawer"))),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ) ,),
      ),
      body: Center(child: Text("Click on 3 dots to open popup menu, Click on 3 lines to open drawer menu"),),
    );
  }
}
