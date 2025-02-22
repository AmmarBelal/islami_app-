class IntroPageModel {
  String image;
  String title;
  String description;

  IntroPageModel(
      {required this.image, required this.description, required this.title});

  static List<IntroPageModel> introPageList = [
    IntroPageModel(
        image: 'assets/images/Group.png',
        description: '',
        title: 'Welcome To Islmi App'),
    IntroPageModel(
        image: 'assets/images/kabba.png',
        description: 'We Are Very Excited To Have You In Our Community',
        title: 'Welcome To Islmi App'),
    IntroPageModel(
        image: 'assets/images/welcome.png',
        description: 'Read, and your Lord is the Most Generous',
        title: 'Reading the Quran'),
    IntroPageModel(
        image: 'assets/images/bearish.png',
        description: 'Praise the name of your Lord, the Most High',
        title: 'Bearish'),
    IntroPageModel(
        image: 'assets/images/radio.png',
        description: 'You can listen to the Holy Quran Radio through the application for free and easily',
        title: 'Holy Quran Radio'),
  ];
}
