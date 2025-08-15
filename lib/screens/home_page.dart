import 'package:design_food_app/widgets/custom_button.dart';
import 'package:design_food_app/widgets/custom_range_slider.dart';
import 'package:design_food_app/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:design_food_app/themes/all_colors.dart';
import 'package:design_food_app/themes/all_images.dart';
import 'package:design_food_app/themes/all_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(35.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 26,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SvgPicture.asset(
              'assets/images/svg/left-arrow.svg',
              width: 24,
              height: 24,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset(
                'assets/images/svg/search.svg',
                height: 30,
                width: 30,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //this is burger image
              Transform.translate(
                offset: const Offset(0, -25),
                child: Center(
                  child: Image.asset(
                    AllImages.iamge1,
                    width: 320,
                    height: 325.13,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //this is title field
              Transform.translate(
                offset: Offset(0, -27),
                child: Text(
                  "Cheeseburger Wenday's Burger",
                  style: AllStyles.headingstyle,
                ),
              ),

              //star rating feild
              Transform.translate(
                offset: Offset(0, -20),
                child: Row(
                  children: [
                    Image.asset(AllImages.imageStar, height: 13, width: 13),
                    const SizedBox(width: 6),
                    Text('4.9 - 26 mins', style: AllStyles.rankTextstyle),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // this is description 
              Transform.translate(
                offset: Offset(0, -18),
                child: Text(
                  'The Cheeseburger Wendy\'s Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it\'s topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.',
                  style: AllStyles.subtitlestyle,
                ),
              ),

              // spicy and portion feild
              Transform.translate(
                offset: Offset(0, -5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Spicy Section
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Spicy',
                            style: AllStyles.subtitlestyle.copyWith(
                              color: AllColors.primaryColor,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const CustomRangeSlider(),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mild',
                                style: AllStyles.sliderRightTextstyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  'Hot',
                                  style: AllStyles.subtitlestyle.copyWith(
                                    color: AllColors.primaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 70),
                   // Portion Section
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Portion',
                            style: AllStyles.subtitlestyle.copyWith(
                              color: AllColors.primaryColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              CustomButton(
                                color: AllColors.primaryColor,
                                icon: Icons.remove,
                                onTap: () {
                                  setState(() {
                                    if (number > 1) {
                                      number--;
                                    }
                                  });
                                },
                              ),
                              const SizedBox(width: 12),
                              Text(
                                number.toString(),
                                style: AllStyles.headingstyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 12),
                              CustomButton(
                                color: AllColors.primaryColor,
                                icon: Icons.add,
                                onTap: () {
                                  setState(() {
                                    number++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextButton(
                    height: 50,
                    width: 80,
                    color: AllColors.primaryColor,
                    text: Text('\$8.20', style: AllStyles.priceTextstyle),
                  ),
                  CustomTextButton(
                    height: 50,
                    width: 160,
                    color: AllColors.secondaryColor,
                    text: Text(
                      'ORDER NOW',
                      style: AllStyles.orderTextstyle.copyWith(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
