import 'package:flutter/material.dart';
import 'package:tatware_assessment/components/base_widgets/custom_text.dart';

import '../../../components/resources/color_manger.dart';

class CircularImage extends StatelessWidget {
  final String userName;
  const CircularImage({Key? key,required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery
        .of(context)
        .size
        .width;
    final myHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: ColorManger.grey.withOpacity(0.2),
                ),
              ),
                Positioned(
                  right: 5,
                  top: 1,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManger.green,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: myHeight*0.01,),
          SizedBox(
            width: myWidth*0.15,
            child: Align(
                alignment: Alignment.center,
                child: CustomText(textLabel: userName, customTextType: CustomTextType.normal)),
          )
        ],
      ),
    );
  }
}
