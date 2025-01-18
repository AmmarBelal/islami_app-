import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/app_assets.dart';

import '../../../core/theme/app_colors.dart';

class radio extends StatefulWidget {
  static String routeName = "/radio";
  const radio({super.key});

  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  bool _clicked = true;
  bool _isclicked = false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.Radioback), fit: BoxFit.cover)),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const SizedBox(height: 30),
          Image.asset("assets/images/qur2an_Screen/Logo (2).png"),
          Row(
            children: [
              SizedBox(
                width:mediaQuery.size.width * 0.460,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _clicked = !_clicked;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _clicked ? AppColors.gold : AppColors.black.withOpacity(0.5),
                  ),
                  child: Text("Radio",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Janna",
                          color: _clicked ? AppColors.black : AppColors.white)),
                ),
              ),
              Spacer(),
              SizedBox(
                width: mediaQuery.size.width * 0.460,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _clicked = !_clicked;

                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _clicked ? AppColors.black.withOpacity(0.5) :AppColors.gold ,
                  ),
                  child: Text("Reciters",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Janna",
                          color: _clicked ? AppColors.white : AppColors.black)),
                ),
              ),
            ],
          ),

        ]));
  }
}
