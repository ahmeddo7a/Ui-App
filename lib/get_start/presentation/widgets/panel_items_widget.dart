import 'package:flutter/material.dart';

import '../../../components/base_widgets/custom_text.dart';
import '../../../components/resources/color_manger.dart';

class PanelItems extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  const PanelItems({Key? key,required this.image,required this.name,required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: myWidth * 0.06),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: myWidth*0.04,vertical: myHeight*0.01),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManger.grey.withOpacity(0.1),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: myHeight * 0.04,
                child: Image.asset(image,fit: BoxFit.cover,)
            ),
            SizedBox(width: myWidth*0.05,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   CustomText(
                      textLabel: name, customTextType: CustomTextType.normal),
                  SizedBox(height: myHeight*0.002,),
                   CustomText(
                      textLabel: description, customTextType: CustomTextType.small)
                ],
              ),
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.navigate_next))

          ],
        ),
      ),
    );
  }
}
