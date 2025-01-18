import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class radioCard extends StatelessWidget {
  const radioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: 390,
      height: 141,
      decoration:  BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(20),),

      child: const Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Radio list of names ",
              style: TextStyle(
                fontFamily: "Janna",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow,size: 60,),
                  SizedBox(width: 20,),
                  Icon(Icons.volume_up,size: 50,),


                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:
            Image(image: AssetImage("assets/images/radio_Screen/Mask group.png"),),
          )
        ],
      ),
    );
  }
}
