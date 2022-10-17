import 'package:flutter/material.dart';
import 'package:flutter_onboarding/config/constants.dart';
import 'package:flutter_onboarding/screens/home/home_screen.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var pageController = PageController();

  var index = 0.obs;

  Widget onBoradingOne() {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorPrimary),
            ),
            onPressed: nextPage,
            child: Text('Next'),
          ),
        ],
      ),
    );
  }

  Widget onBoradingTwo() {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorPrimary),
            ),
            onPressed: previousPage,
            child: Text('Back'),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorPrimary),
            ),
            onPressed: nextPage,
            child: Text('Next'),
          ),
        ],
      ),
    );
  }

  Widget onBoradingThere() {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(colorPrimary),
              ),
              onPressed:(){
                 Get.to(HomeScreen());
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 15.0
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void nextPage() {
    index++;
    pageController.animateToPage(pageController.page!.toInt() + 1,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  void previousPage() {
    index--;
    pageController.animateToPage(pageController.page!.toInt() - 1,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }
}
