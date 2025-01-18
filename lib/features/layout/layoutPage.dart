import 'package:flutter/material.dart';
import 'package:islami_application/core/theme/app_colors.dart';
import 'package:islami_application/features/layout/qur2an/qur2an_screen.dart';
import 'package:islami_application/features/layout/sbha/sbha_tab.dart';
import '../../core/constants/app_assets.dart';
import 'hadith/hadith_screen.dart';
import 'radio/radio_screen.dart';
import 'times/times_screen.dart';
import 'widgets/custom_bottom_nav_bar.dart';

class layoutPage extends StatefulWidget {
  const layoutPage({super.key});

  static String routeName = "/layoutPage";

  @override
  State<layoutPage> createState() => _navBarState();
}

class _navBarState extends State<layoutPage> {
  int selectedIndex = 0;
  List<Widget> taps =[
    qur2an(),
    hadith(),
    TasbihScreen(),
    radio(),
    times()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: taps[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.gold,
        fixedColor: AppColors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: customBottom(
                selectedIndex: selectedIndex,
                navBarItem: 0,
                iconPath: AppAssets.Qur2qnICN,
              ),
              label: "QUR2AN"),
          BottomNavigationBarItem(
              icon: customBottom(
                  selectedIndex: selectedIndex,
                  navBarItem: 1,
                  iconPath: AppAssets.HadithICN),
              label: "HADITH"),
          BottomNavigationBarItem(
              icon: customBottom(
                  selectedIndex: selectedIndex,
                  navBarItem: 2,
                  iconPath: AppAssets.TasbehICN),
              label: "TASBEH"),
          BottomNavigationBarItem(
              icon: customBottom(
                  selectedIndex: selectedIndex,
                  navBarItem: 3,
                  iconPath: AppAssets.RadioICN),
              label: "RADIO"),
          BottomNavigationBarItem(
              icon: customBottom(
                  selectedIndex: selectedIndex,
                  navBarItem: 4,
                  iconPath: AppAssets.TimesICN),
              label: "TIMES")
        ],
      ),
    );
  }
}
