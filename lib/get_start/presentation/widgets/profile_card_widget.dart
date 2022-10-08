import 'package:flutter/material.dart';
import 'package:tatware_assessment/components/base_widgets/custom_text.dart';
import 'package:tatware_assessment/components/resources/color_manger.dart';

class ProfileCardWidget extends StatelessWidget {
  final String profileImage;
  final String rate;
  final String name;
  final String description;
  const ProfileCardWidget({Key? key,required this.profileImage,required this.rate,required this.name,required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Card(
      child: Container(
        height: myHeight * 0.34,
        width: myWidth * 0.41,
        decoration: const BoxDecoration(
            color: ColorManger.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: SizedBox(
                height: myHeight * 0.21,
                width: myWidth * 0.43,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.asset(
                      profileImage,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: myWidth*0.02),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(width: myWidth*0.01,),
                     Expanded(child: CustomText(textLabel: '($rate)', customTextType: CustomTextType.small,)),
                    Icon(Icons.favorite,color: ColorManger.grey.withOpacity(0.5),)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: myWidth*0.02),
                child: CustomText(textLabel: name, customTextType: CustomTextType.normal),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: myWidth*0.02),
                child: CustomText(textLabel: description, customTextType: CustomTextType.small),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
