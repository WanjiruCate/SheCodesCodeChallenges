import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sheCodeTask1/models/onboarding_model.dart';
import 'package:sheCodeTask1/utils/colors.dart';
import 'package:sheCodeTask1/widgets/onboard.dart';

class OnBoardingScreens extends StatefulWidget {
  @override
  _OnBoardingScreensState createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  List<OnboardingData> slides = new List<OnboardingData>();

  int _currentIndex = 0;

  PageController pageController = new PageController();

  @override
  void initState() {
    slides = getPageViews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
      color: nextColor,
      fontSize: 16,
    );
    var styleColored = TextStyle(
      color: skipColor,
      fontSize: 16,
    );
    return Scaffold(
        backgroundColor: backgroundColor,
        body: PageView.builder(
          controller: pageController,
          onPageChanged: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
          itemCount: slides.length,
          itemBuilder: (context, index) {
            return SliderTile(
                imageAssetPath: slides[index].getImageAsset(),
                titleText: slides[index].getTitle(),
                descText: slides[index].getDescription(),
                nextStart: _currentIndex != slides.length - 1
                    ? nonColoredButton('Next', style)
                    : coloredButton('Get Started', purpleColor, styleColored));
          },
        ),
        bottomSheet:
            //  _currentIndex != slides.length - 1
            //     ?
            Container(
          color: backgroundColor,
          height: Platform.isIOS ? 70 : 60,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  for (int i = 0; i < slides.length; i++)
                    _currentIndex == i
                        ? _pageIndexIndicator(true)
                        : _pageIndexIndicator(false),
                ],
              ),
              InkWell(
                onTap: () {
                  pageController.animateToPage(slides.length - 1,
                      duration: Duration(milliseconds: 5),
                      curve: Curves.linearToEaseOut);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: skipColor,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 6.0 : 6.0,
      width: isCurrentPage ? 6.0 : 6.0,
      decoration: BoxDecoration(
        //      shape: BoxShape.circle,
        color: isCurrentPage ? purpleColor : skipColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}

class SliderTile extends StatelessWidget {
  String imageAssetPath;
  String titleText;
  String descText;
  Widget nextStart;

  SliderTile({
    this.titleText,
    this.descText,
    this.imageAssetPath,
    this.nextStart,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              imageAssetPath,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Text(
            titleText,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            descText,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          nextStart,
        ],
      ),
    );
  }
}
