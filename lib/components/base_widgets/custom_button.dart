
import 'package:flutter/material.dart';
import 'package:tatware_assessment/components/resources/color_manger.dart';
import 'package:tatware_assessment/components/resources/font_manger.dart';
import 'package:tatware_assessment/components/resources/size_manger.dart';

class CustomButton extends StatelessWidget {
  final String buttonLabel;
  final Function() onPressed;
  final Color backgroundColor;
  final double myFontSize;
  final FontWeight myFontWeight;
  final String myFontFamily;
  final Color myTextColor;
  final double myPadding;
  final double myBorderRadius;

  const CustomButton(
      {
        Key? key,
        required this.onPressed,
        required this.buttonLabel,
        this.myTextColor=ColorManger.white,
        this.backgroundColor=ColorManger.mainColor,
        this.myFontSize=FontSizeManger.s18,
        this.myFontFamily = FontFamilyManager.poppinsFontFamily,
        this.myFontWeight=FontWeightManager.medium,
        this.myPadding=12,
        this.myBorderRadius=5,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(myPadding)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(myBorderRadius),
            side: BorderSide(
                color: backgroundColor
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
      ),
      child: Text(
        buttonLabel,
        style: TextStyle(
            color: myTextColor, fontSize: myFontSize, fontWeight: myFontWeight ,fontFamily: myFontFamily ),
      ),
    );
  }
}