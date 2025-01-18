import 'package:flutter/material.dart';
import 'package:islami_application/core/theme/app_colors.dart';

import '../../../core/constants/app_assets.dart';

class SplashScreen_2 extends StatefulWidget {
  const SplashScreen_2({super.key});
  static const String routeName = '/2ndSplash';

  @override
  State<SplashScreen_2> createState() => _SplashScreen_2State();
}

class _SplashScreen_2State extends State<SplashScreen_2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1250), () {
      Navigator.pushReplacementNamed(context, '/intro');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(AppAssets.SpOBJECTS),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                AppAssets.SProuteLogo,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
