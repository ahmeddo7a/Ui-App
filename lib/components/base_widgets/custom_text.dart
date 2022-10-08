import 'package:flutter/material.dart';
import 'package:tatware_assessment/components/resources/color_manger.dart';
import 'package:tatware_assessment/components/resources/font_manger.dart';
import 'package:tatware_assessment/components/resources/size_manger.dart';

enum CustomTextType { logo, main, normal, small ,custom}
class CustomText extends StatelessWidget {
  final String textLabel;
  final CustomTextType customTextType;
  final Color myTxtColors;
  final double myTxtSize;
  final int maxLine;
  final FontWeight myFontWeight;
  final String myFontFamily;

  const CustomText(
      {
        Key? key,
        required this.textLabel,
        required this.customTextType,
        this.myTxtSize = FontSizeManger.s14,
        this.myTxtColors = ColorManger.black,
        this.maxLine = 2,
        this.myFontWeight=FontWeightManager.regular,
        this.myFontFamily = FontFamilyManager.poppinsFontFamily
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? txtColor;
    double? txtSize;

    switch(customTextType){
      case CustomTextType.logo:
        txtSize = FontSizeManger.s45;
        break;
      case CustomTextType.main:
        txtSize = FontSizeManger.s19;
        break;
      case CustomTextType.normal:
        txtSize = FontSizeManger.s14;
        break;
      case CustomTextType.small:
        txtColor = ColorManger.grey;
        txtSize = FontSizeManger.s12;
        break;
      case CustomTextType.custom:
        txtColor =myTxtColors;
        txtSize=myTxtSize;
    }

    return Text(
      textLabel,
      maxLines: maxLine,
      style: TextStyle(
        color: txtColor,
        fontSize: txtSize,
        fontWeight: myFontWeight,
        fontFamily: myFontFamily
      ),
    );
  }
}