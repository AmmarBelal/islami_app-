import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/app_assets.dart';
import 'package:islami_application/features/layout/times/widgets/times_board.dart';

import '../../../core/theme/app_colors.dart';

class times extends StatefulWidget {
  static String routeName = "/times";
  const times({super.key});

  @override
  State<times> createState() => _timesState();
}

class _timesState extends State<times> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.Timesback), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset("assets/images/qur2an_Screen/Logo (2).png"),
          times_board(),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Azkar",
              style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.offWhite),
            ),
          ),
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Container(
                width: 185,
                height: 280,
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.gold,width: 2),
                    image: DecorationImage(
                      image: AssetImage("assets/images/times_Screen/bell-icon 1.png"),
                    )

                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Evening Azkar",
                    style: TextStyle(
                        fontFamily: "Janna",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.offWhite),
                  ),
                ),
              ),
              Container(
                width: 185,
                height: 280,
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.gold,width: 2),
                  image: DecorationImage(
                    image: AssetImage("assets/images/times_Screen/comment-bubble-icon 1.png"),
                  )
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Morning Azkar",
                    style: TextStyle(
                        fontFamily: "Janna",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.offWhite),
                  ),
                ),
              )

            ]),
          )
        ],
      ),
    );
  }
}
