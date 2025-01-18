import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:islami_application/core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';

class TasbihScreen extends StatefulWidget {
  const TasbihScreen({super.key});
  static String routeName = "/sbha";

  @override
  _RotatingImageState createState() => _RotatingImageState();
}

class _RotatingImageState extends State<TasbihScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int counter = 0;
  int selectedindex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<String> tasbih = [
    "سُبْحَانَ اللَّهِ",
    "الْحَمْدُ لِلَّهِ",
    "اللَّهُ أَكْبَرُ",
    "لَا إِلَهَ إِلَّا اللَّهُ",
  ];
  void _rotateImage() {
    setState(() {
      counter++;
      if (counter == 33) {
        selectedindex = (selectedindex + 1) % tasbih.length;
        counter = 0;
      } else if (counter == 100) {
        counter = 0;
        selectedindex = 0;
      }
    });
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.Tasbehback), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Image.asset("assets/images/qur2an_Screen/Logo (2).png"),
              const Spacer(),
              const Text(
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: "Janna",
                    color: AppColors.offWhite),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(38),
                    child: GestureDetector(
                      onTap: () {
                        _rotateImage();
                      },
                      child: AnimatedBuilder(
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: _controller.value * 2 * math.pi / 33,
                            child: child,
                          );
                        },
                        animation: _controller,
                        child: Container(
                          width: size.width,
                          height: 0.5*size.height,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/sbha_Screen/Sebha (1).png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tasbih[selectedindex],
                          style: const TextStyle(
                            fontSize: 36,
                            color: AppColors.offWhite,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Janna",
                          ),
                        ),
                        Text(
                          "${counter}",
                          style: const TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
