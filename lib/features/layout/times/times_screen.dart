import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/app_assets.dart';

class times  extends StatelessWidget {
  static String routeName = "/times";
  const times  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.Timesback),
          fit: BoxFit.cover
        )
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,

      ),
    );
  }
}
