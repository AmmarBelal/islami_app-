import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/app_assets.dart';

class radio  extends StatelessWidget {
  static String routeName = "/radio";
  const radio  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.Radioback),
          fit: BoxFit.cover
        )
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,

      ),
    );
  }
}
