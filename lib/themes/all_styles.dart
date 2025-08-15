import 'package:design_food_app/themes/all_colors.dart';
import 'package:design_food_app/themes/all_sizes.dart';
import 'package:flutter/material.dart';

class AllStyles {
  static final headingstyle = TextStyle(
    fontSize: AllSizes.large,
    color: AllColors.secondaryColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
  );
  static final subtitlestyle = TextStyle(
    fontSize: AllSizes.small,
    color: AllColors.subtileTextColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.normal,
  );
  static final rankTextstyle = TextStyle(
    fontSize: AllSizes.ranktextsmall,
    color: AllColors.rankTextColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
  static final sliderRightTextstyle = TextStyle(
    fontSize: AllSizes.ranktextsmall,
   color: AllColors.greenFadeColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
  static final priceTextstyle = TextStyle(
    fontSize: AllSizes.large,
   color: AllColors.whiteColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
  );
  static final orderTextstyle = TextStyle(
    fontSize: AllSizes.large,
   color: AllColors.whiteColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
  );
  
}
