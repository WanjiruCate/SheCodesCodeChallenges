// class OnBoardingData {
//   String image;
//   String title;
//   String desc;

//   OnBoardingData({
//     this.image,
//     this.title,
//     this.desc,
//   });

//   void setTitle(String titleSet) {
//     title = titleSet;
//   }

//   void setDesc(String descSet) {
//     desc = descSet;
//   }

//   void setImageAsset(String assetSet) {
//     image = assetSet;
//   }

//   String getTitle() {
//     return title;
//   }

//   String getDescription() {
//     return desc;
//   }

//   String getImageAsset() {
//     return image;
//   }

//   List<OnBoardingData> getPageViews() {
//     List<OnBoardingData> slides = new List<OnBoardingData>();
//     OnBoardingData onBoardingData = new OnBoardingData();

// onBoardingData.setTitle('Keep Calm');
// onBoardingData.setDesc('Feel less stressed and mindful with meditation');
// onBoardingData.setImageAsset(
//   'assets/images/hugo-35.png',
// );

//     onBoardingData = new OnBoardingData();

// onBoardingData.setTitle('MindFullness');
// onBoardingData.setDesc(
//     'Mind is more powerful we possess and to take of our mind is an outmost priority');
// onBoardingData.setImageAsset('assets/images/hugo-165.png');

//     onBoardingData = new OnBoardingData();

// onBoardingData.setTitle('Stay Focused');
// onBoardingData.setDesc(
//     'Let\'s maintain your focus by meditating every day without hassle');
// onBoardingData.setImageAsset('assets/images/hugo-waiting.png');

//     onBoardingData = new OnBoardingData();

//     return slides;
//   }
// }

class OnboardingData {
  String title;
  String description;
  String imageAsset;

  OnboardingData({
    this.title,
    this.description,
    this.imageAsset,
  });
  void setTitle(String titleSet) {
    title = titleSet;
  }

  void setDesc(String descSet) {
    description = descSet;
  }

  void setImageAsset(String assetSet) {
    imageAsset = assetSet;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }

  String getImageAsset() {
    return imageAsset;
  }
}

List<OnboardingData> getPageViews() {
  List<OnboardingData> slides = new List<OnboardingData>();
  OnboardingData onboardingData = new OnboardingData();

  onboardingData.setTitle('Keep Calm');
  onboardingData.setDesc('Feel less stressed and mindful with meditation');
  onboardingData.setImageAsset(
    'assets/images/hugo-35.png',
  );
  slides.add(onboardingData);

  onboardingData = new OnboardingData();

  onboardingData.setTitle('Mindfullness');
  onboardingData.setDesc(
      'Mind is more powerful we possess and to take of our mind is an outmost priority');
  onboardingData.setImageAsset('assets/images/hugo-165.png');

  slides.add(onboardingData);

  onboardingData = new OnboardingData();

  onboardingData.setTitle('Stay focus');
  onboardingData.setDesc(
      'Let\'s maintain your focus by meditating every day without hassle');
  onboardingData.setImageAsset('assets/images/hugo-waiting.png');
  slides.add(onboardingData);

  onboardingData = new OnboardingData();

  onboardingData = new OnboardingData();

  return slides;
}
