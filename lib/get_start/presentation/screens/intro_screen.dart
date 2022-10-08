import 'package:flutter/material.dart';
import 'package:tatware_assessment/components/base_widgets/custom_button.dart';
import 'package:tatware_assessment/components/base_widgets/custom_text.dart';
import 'package:tatware_assessment/components/components.dart';
import 'package:tatware_assessment/components/resources/assets_manger.dart';
import 'package:tatware_assessment/components/resources/font_manger.dart';
import 'package:tatware_assessment/components/resources/size_manger.dart';

import '../../../components/resources/color_manger.dart';
import 'chat_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorManger.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: myWidth * 0.15, vertical: myHeight * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: myHeight * 0.45,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: myWidth * 0.1,top: myHeight*0.05),
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  fontSize: FontSizeManger.s18,
                                  color: ColorManger.black,
                                  fontFamily: FontFamilyManager.poppinsFontFamily,
                                  fontWeight: FontWeightManager.regular
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Hi, My name is '),
                                TextSpan(
                                  text: 'Oranobot',
                                  style: TextStyle(
                                      fontWeight: FontWeightManager.bold
                                  ),
                                ),
                                TextSpan(text: '\nI will always be there to help and assist you.\n'),
                                TextSpan(text: '\nSay Start To go to Next.'),


                              ]),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        ImageAssets.curveImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(ImageAssets.logoImage,fit: BoxFit.cover,),
              SizedBox(
                height: myHeight*0.01,
              ),
              SizedBox(
                  width: myWidth*0.4,
                  child: CustomButton(onPressed: (){
                    navigateTo(context, const ChatScreen());
                  }, buttonLabel: 'Next'),),
              SizedBox(
                height: myHeight*0.03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.language),
                  SizedBox(
                    width: myWidth*0.02,
                  ),
                  const CustomText(textLabel: 'English', customTextType: CustomTextType.normal),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
