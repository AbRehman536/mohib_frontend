import 'package:flutter/material.dart';
import 'package:mohib_frontend/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController controller = PageController();
  List<OnBoardingModel>  onBoardingList = [
    OnBoardingModel(image: "assets/images/first.jpg", title: "First Page"),
    OnBoardingModel(image: "assets/images/second.png", title: "Second Page"),
    OnBoardingModel(image: "assets/images/first.jpg", title: "Third Page"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: onBoardingList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(children: [
                  Image.asset(onBoardingList[index].image.toString()),
                  Text(onBoardingList[index].title.toString(),
                  style: TextStyle(fontSize: 25),),
                ],);
              },),
          ),
          SmoothPageIndicator(
              controller: controller,  // PageController
              count:  onBoardingList.length,
              effect:  ExpandingDotsEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          ElevatedButton(onPressed: (){}, child: Text("Next")),
        ],
      ),
    );
  }
}
