import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicator: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                  Tab(icon: Icon(Icons.home_outlined),text: "Home",),
                  Tab(icon: Icon(Icons.article),text: "Articles",),
                  Tab(icon: Icon(Icons.person),text: "User",),
                ]),
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Icon(Icons.home,size: 40,),
            Text("Home")
          ],),),
          Center(child: Column(children: [
            Image.asset("assets/images/first.jpg")
          ],),),
          Center(child: Column(children: [
            Icon(Icons.person, size: 40,),
            ElevatedButton(onPressed: (){}, child: Text("Update Profile"))
          ],),),
        ]),
      ),
    );
  }
}
