import 'package:flutter/material.dart';

import '../resources/assets_manger.dart';
import '../resources/color_manger.dart';

AppBar customAppBar(){
  return AppBar(
    backgroundColor: ColorManger.white,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          ImageAssets.secondProfile,
          fit: BoxFit.cover,
        ),
      ),
    ),
    title: Center(
      child: Container(
        width: 80,
        child: Image.asset(ImageAssets.oranos,fit: BoxFit.cover,),
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: ColorManger.black,
          ))
    ],
  );
}

/*
child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              const CustomText(
                textLabel: StringManger.oranos,
                customTextType: CustomTextType.custom,
                myFontWeight: FontWeightManager.bold,
                myTxtSize: FontSizeManger.s19,
              ),
              Positioned(
                right: 0,
                bottom: 6,
                child: Container(
                  height: 4,
                  width: 4,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManger.mainColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
 */