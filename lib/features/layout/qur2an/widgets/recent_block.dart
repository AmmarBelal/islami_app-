import 'package:flutter/material.dart';
import 'package:islami_application/core/theme/app_colors.dart';
import '../../../../model/recent_Data.dart';

class recentContainer extends StatelessWidget {
   recentContainer({super.key, required this.recentData});

  final RecentData recentData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(recentData.suranameEN,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              Text(recentData.suranameAR,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              Text(recentData.suraverses,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
            ],
          ),
          Image.asset("assets/images/qur2an_Screen/quranSura.png")
        ],
      ),

    );
  }
}
