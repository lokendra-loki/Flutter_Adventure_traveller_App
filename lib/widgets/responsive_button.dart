//making reusable responsive button
//we have two button, icons ,color are same but only size is different

import 'package:adventure_travell_app/colors/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
//boolian variable
  bool isResponsive;
  double width;

  ResponsiveButton({
    Key? key,
    this.isResponsive = false,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Icon(
            Icons.arrow_forward_outlined,
            size: 28,
          ),
        ],
      ),
    );
  }
}
