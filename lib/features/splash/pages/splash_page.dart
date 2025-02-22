import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/app_assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static String routeName = '/splash';
  static const Duration _duration = Duration(milliseconds: 1750);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/2ndSplash');
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: FadeInDown(
                duration: SplashPage._duration,
                child: Image.asset(
                  AppAssets.SPglow,
                  height: size.height * 0.25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210),
              child: Align(
                alignment: Alignment.center,
                child: ZoomIn(
                  duration: SplashPage._duration,
                  child: Image.asset(
                    AppAssets.SPislami,
                    height: size.height * 0.25,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ZoomIn(
                duration: SplashPage._duration,
                child: Image.asset(
                  AppAssets.SpOBJECTS,
                  height: size.height * 0.25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                duration: SplashPage._duration,
                child: Image.asset(
                  AppAssets.SProuteLogo,
                  height: size.height * 0.25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: size.height * 0.25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: FadeInLeft(
                  duration: SplashPage._duration,
                  child: Image.asset(
                    AppAssets.SPshapeLeft,
                    width: size.width * 0.25,
                    height: size.height * 0.25,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.25),
              child: Align(
                alignment: Alignment.centerRight,
                child: FadeInRight(
                  duration: SplashPage._duration,
                  child: Image.asset(
                    AppAssets.SPshapeRight,
                    width: size.width * 0.25,
                    height: size.height * 0.25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
