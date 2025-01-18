import 'package:flutter/material.dart';
import 'package:islami_application/core/theme/app_colors.dart';
import 'package:islami_application/model/hadith_data.dart';

class hadithCard extends StatelessWidget {
  hadithCard({super.key, required this.HadithData});
  final hadithData HadithData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/hadith_Screen/HadithCard.jpg"),
              fit: BoxFit.fitHeight)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20,),
          Text(
            HadithData.hadithTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: "Janna",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.black),
          ),
          Expanded(
              child: ListView(
            children: [
              Text(
                HadithData.hadithContent,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: "Janna",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black),
              ),
            ],
          )),
          const SizedBox(height: 30,),

        ],
      ),
    );
  }
}
