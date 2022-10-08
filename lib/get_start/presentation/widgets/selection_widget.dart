import 'package:flutter/material.dart';

import '../../../components/base_widgets/custom_text.dart';
import '../../../components/resources/color_manger.dart';
import 'checkBox_widget.dart';

class BuildSelectionWidget extends StatelessWidget {
  const BuildSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:myWidth*0.15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const BuildCheckBox(value: true),
              SizedBox(width: myWidth*0.03,),
              const CustomText(textLabel: 'Security', customTextType: CustomTextType.normal),
            ],
          ),
          SizedBox(height: myHeight*0.01,),
          Row(
            children: [
              const BuildCheckBox(value: false),
              SizedBox(width: myWidth*0.03,),
              const CustomText(textLabel: 'Supply Chain', customTextType: CustomTextType.normal),
            ],
          ),
          SizedBox(height: myHeight*0.01,),
          Row(
            children: [
              const BuildCheckBox(value: false),
              SizedBox(width: myWidth*0.03,),
              const CustomText(textLabel: 'Information Technology', customTextType: CustomTextType.normal),
            ],
          ),
          SizedBox(height: myHeight*0.01,),
          Row(
            children: [
              const BuildCheckBox(value: false),
              SizedBox(width: myWidth*0.03,),
              const CustomText(textLabel: 'Human Resource', customTextType: CustomTextType.normal),
            ],
          ),
          SizedBox(height: myHeight*0.01,),
          Row(
            children: [
              const BuildCheckBox(value: true),
              SizedBox(width: myWidth*0.03,),
              const CustomText(textLabel: 'Business Research', customTextType: CustomTextType.normal),
            ],
          ),
          SizedBox(height: myHeight*0.02,),
          const CustomText(textLabel: "Say Done, Or Press Send to Apply", customTextType: CustomTextType.custom,myTxtColors: ColorManger.grey,myTxtSize: 14,)

        ],

      ),
    );
  }
}
