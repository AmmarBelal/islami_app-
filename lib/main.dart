import 'package:flutter/material.dart';
import 'package:islami_application/features/intro/pages/intro_page.dart';
import 'package:islami_application/features/layout/layoutPage.dart';
import 'package:islami_application/features/layout/qur2an/qur2an_details.dart';
import 'package:islami_application/features/layout/qur2an/qur2an_screen.dart';
import 'package:islami_application/features/splash/pages/2nd_splash_screen.dart';
import 'package:islami_application/features/splash/pages/splash_page.dart';
import 'features/layout/sbha/sbha_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => const SplashPage(),
        SplashScreen_2.routeName: (context) => const SplashScreen_2(),
        IntroPage.routeName: (context) => const IntroPage(),
        layoutPage.routeName:(context) => const layoutPage(),
        quranDetails.routeName:(context) =>  quranDetails(),
        qur2an.routeName:(context) => qur2an(),
        TasbihScreen.routeName:(context) => TasbihScreen(),
      },

    );
  }
}

