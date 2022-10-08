import 'package:flutter/material.dart';
import 'package:tatware_assessment/components/base_widgets/custom_button.dart';
import 'package:tatware_assessment/components/base_widgets/custom_text.dart';
import 'package:tatware_assessment/components/components.dart';
import 'package:tatware_assessment/components/resources/assets_manger.dart';
import 'package:tatware_assessment/components/resources/color_manger.dart';
import 'package:tatware_assessment/components/resources/font_manger.dart';
import 'package:tatware_assessment/components/resources/string_manager.dart';

import 'intro_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorManger.mainColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageAssets.bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                       const CustomText(
                        textLabel: StringManger.oranos,
                        customTextType: CustomTextType.logo,
                        myFontWeight: FontWeightManager.bold,
                      ),
                       Positioned(
                         right: 0,
                         bottom: 15,
                         child: Container(
                           height: 8,
                           width: 8,
                           decoration: const BoxDecoration(
                             shape: BoxShape.circle,
                             color: ColorManger.mainColor,
                           ),
                         ),
                       ),
                    ],
                  ),
                  SizedBox(
                    height: myHeight * 0.01,
                  ),
                  const CustomText(
                    textLabel: StringManger.expertFromEveryPlanet,
                    customTextType: CustomTextType.main,
                    myTxtColors: ColorManger.grey,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    width: myWidth*0.9,
                    child: CustomButton(
                        onPressed: () {
                          navigateTo(context, IntroScreen());
                        }, buttonLabel: StringManger.getStarted,)),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                        textLabel: StringManger.dontHaveAnAccount,
                        customTextType: CustomTextType.small),
                    TextButton(
                        onPressed: () {},
                        child: const CustomText(
                            textLabel: StringManger.signUp,
                            customTextType: CustomTextType.custom,
                            myTxtColors: ColorManger.mainColor,

                        )),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.language),
                    SizedBox(
                      width: myWidth*0.02,
                    ),
                    const CustomText(textLabel: 'English', customTextType: CustomTextType.small),
                  ],
                ),
                SizedBox(height: myHeight*0.03,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
