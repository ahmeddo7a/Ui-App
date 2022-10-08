import 'package:flutter/material.dart';

import '../../../components/base_widgets/custom_text.dart';
import '../../../components/resources/assets_manger.dart';
import '../../../components/resources/color_manger.dart';

class BuildChatWidget extends StatelessWidget {
  final String sentMessage;
  final String sendingMessage;
  const BuildChatWidget({Key? key,required this.sendingMessage,required this.sentMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: myWidth*0.015,vertical: myHeight*0.015),
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManger.containerColor.withOpacity(0.3)
                ),
                child:  const ImageIcon(AssetImage(ImageAssets.chatImage),color: ColorManger.mainColor,)
            ),
            SizedBox(
              width: myWidth*0.03,
            ),
            Container(
              width: myWidth*0.7,
              padding: EdgeInsets.only(right: myHeight*0.02,left: myWidth*0.04,top:myHeight*0.015,bottom: myHeight*0.015 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorManger.containerColor.withOpacity(0.3),
              ),
              child:  CustomText(textLabel: sentMessage, customTextType: CustomTextType.normal),
            )
          ],
        ),
        SizedBox(height: myHeight*0.02,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: myWidth*0.5,
              padding: EdgeInsets.only(right: myHeight*0.02,left: myWidth*0.04,top:myHeight*0.015,bottom: myHeight*0.015 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorManger.mainColor.withOpacity(0.8)

              ),
              child: CustomText(textLabel: sendingMessage, customTextType: CustomTextType.custom,myTxtColors: ColorManger.white,),
            ),
            SizedBox(
              width: myWidth*0.02,
            ),
            const ImageIcon(AssetImage(ImageAssets.readIcon),color: ColorManger.mainColor,)
          ],
        ),
      ],
    );
  }
}
