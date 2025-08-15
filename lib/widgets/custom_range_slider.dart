import 'package:design_food_app/themes/all_colors.dart';
import 'package:design_food_app/themes/all_styles.dart';
import 'package:design_food_app/widgets/custom_thumb_shape.dart';
import 'package:design_food_app/widgets/custom_track_shape.dart';
import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({super.key});

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  double _value = 100;
  bool _isDragging = false;

  @override
  Widget build(BuildContext context) {
    const double sliderWidth = 115;
    const double thumbWidth = 16;
    const double labelWidth = 45;

    double effectiveWidth = sliderWidth - thumbWidth;

    double thumbCenterX = (_value / 100) * effectiveWidth + (thumbWidth / 2);

    double labelLeft = thumbCenterX - (labelWidth / 2);

    labelLeft = labelLeft.clamp(0.0, sliderWidth - labelWidth);

    return SizedBox(
      width: sliderWidth,
      height: 30,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: AllColors.primaryColor,
              inactiveTrackColor: AllColors.greyFadeColor,
              trackHeight: 5,
              trackShape: const CustomTrackShape(),
              thumbColor: AllColors.primaryColor,
              thumbShape: const CustomThumbShape(),
              tickMarkShape: SliderTickMarkShape.noTickMark,
              overlayShape: SliderComponentShape.noOverlay,
            ),
            child: Slider(
              value: _value,
              min: 1,
              max: 100,
              divisions: 100,
              onChangeStart: (_) {
                setState(() {
                  _isDragging = true;
                });
              },
              onChanged: (val) {
                setState(() {
                  _value = val;
                });
              },
              onChangeEnd: (_) {
                setState(() {
                  _isDragging = false;
                });
              },
            ),
          ),
          if (_isDragging)
            Positioned(
              left: labelLeft,
              top: -35,
              child: Container(
                width: labelWidth,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AllColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Text(
                  _value.toInt().toString(),
                  style: AllStyles.subtitlestyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
