import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_onboarding/config/constants.dart';
import 'package:flutter_onboarding/controllers/onborading_controller.dart';
import 'package:flutter_onboarding/models/onboarding_model.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(color: colorPrimary),
                    ),
                  ),
                ],
              ),
            ),
            // this is list of onboarding
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              child: ListView.builder(
                
                  physics: NeverScrollableScrollPhysics(),
                  controller: _controller.pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: onBoradingList.length,

                  
                  itemBuilder: (context, index) {
                    
                   
                    
                    return Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              height: 300.0,
                              width: 350.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage(onBoradingList[index].image),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            onBoradingList[index].title,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            onBoradingList[index].description,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 30.0,
            ),
            SmoothPageIndicator(
                controller: _controller.pageController, // PageController
                count: 3,
                effect: SlideEffect(
                  activeDotColor: colorPrimary,
                ), // your preferred effect
                onDotClicked: (index) {}),
                SizedBox(height: 40.0,),
                                Obx(()=>_controller.index==2?_controller.onBoradingThere():_controller.index ==0?_controller.onBoradingOne():_controller.onBoradingTwo(),
                
                ),
               
                
          ],
        ),
      ),
    );
  }

  List<OnBoardingModel> onBoradingList = [
    OnBoardingModel(
      'assets/images/photo1.png',
      '''Get A Variety Of 
Choices To Choose ! ''',
      '''Find your favorite food any time and
any place you go to in or out your city.''',
    ),
    OnBoardingModel(
      'assets/images/photo2.png',
      '''Receive High Quality
Food Close To You! ''',
      '''Get High quality meals of your choice
from the places close to you.''',
    ),
    OnBoardingModel(
      'assets/images/photo3.png',
      '''Pick Your Meal 
At Your Door Steps! ''',
      '''Your meals at your door steps
just from one easy click.''',
    ),
  ];
}
