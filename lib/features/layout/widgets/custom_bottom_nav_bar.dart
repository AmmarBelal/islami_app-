import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class customBottom extends StatelessWidget {
  customBottom(
      {super.key,
      required this.selectedIndex,
      required this.navBarItem,
      required this.iconPath});
  final int selectedIndex;
  final int navBarItem;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selectedIndex == navBarItem
              ? AppColors.black.withOpacity(0.6)
              : Colors.transparent),
      child: ImageIcon(
        AssetImage(iconPath),
      ),
    );
  }
}
