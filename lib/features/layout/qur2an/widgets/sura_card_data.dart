import 'package:flutter/material.dart';
import 'package:islami_application/core/theme/app_colors.dart';

import '../../../../model/sura_data.dart';

class suraCardData extends StatelessWidget {
  suraCardData(
      {super.key,
      required this.suraData});

  final QuranData suraData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/qur2an_Screen/arabic-art-svgrepo-com 1.png"))),
          child: Text(
            suraData.suraId,
            style: const TextStyle(
                fontFamily: "Janna",
                color: AppColors.offWhite,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Text(
              suraData.suraNameEn,
              style: const TextStyle(
                  fontFamily: "Janna",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.offWhite),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                "${suraData.suraVerses} verses",
              style: const TextStyle(
                  fontFamily: "Janna",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.offWhite),
            )
          ],
        ),
        const Spacer(),
        Text(
          suraData.suraNameAr,
          style: const TextStyle(
              fontFamily: "Janna",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.offWhite),
        )
      ],
    );
  }
}
