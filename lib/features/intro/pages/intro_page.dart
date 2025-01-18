import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';
import '../../../model/intro_page_model.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});
  static String routeName = '/intro';
  @override
  State<IntroPage> createState() => _IntroPageState();
}

PageController pageController = PageController();

int _currentIndex = 0;

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        decoration: const BoxDecoration(
          color: AppColors.black,
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: 291,
                      height: 171,
                      child: Image.asset(AppAssets.Intropadge)),
                ),
                const SizedBox(height: 40),
                PageView.builder(
                  itemCount: IntroPageModel.introPageList.length,
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final page = IntroPageModel.introPageList[index];
                    return Column(children: [
                      const SizedBox(
                        height: 220,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 270,
                            height: 430,
                            child: Image.asset(
                              page.image,
                              fit: BoxFit.fill,
                            )),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        page.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.gold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(page.description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.gold,
                          )),
                      const SizedBox(
                        height: 80,
                      ),
                    ]);
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () {
                              pageController.previousPage(
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.linear);
                            },
                            child: Text(
                              _currentIndex > 0 ? "Back" : " ",
                              style: TextStyle(color: AppColors.gold),
                            )),
                        const Spacer(),
                        _buildPageIndicator(_currentIndex),
                        const Spacer(),
                        TextButton(
                            onPressed: () {
                              _currentIndex == 4
                                  ? Navigator.pushReplacementNamed(
                                      context, "/layoutPage")
                                  : pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 100),
                                      curve: Curves.linear);
                            },
                            child: Text(
                              _currentIndex <
                                      IntroPageModel.introPageList.length - 1
                                  ? "Next"
                                  : "Finsh",
                              style: TextStyle(color: AppColors.gold),
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildPageIndicator(int currentIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        IntroPageModel.introPageList.length,
        (index) => Container(
          width: 20.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index
                ? AppColors.gold // Active dot color
                : Colors.grey,
            // Inactive dot color
          ),
        ),
      ),
    );
  }
}
