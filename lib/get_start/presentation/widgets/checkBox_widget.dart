import 'package:flutter/material.dart';
import 'package:tatware_assessment/components/resources/color_manger.dart';

class BuildCheckBox extends StatelessWidget {
  final bool value;
  const BuildCheckBox({Key? key,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: value ?ColorManger.mainColor :ColorManger.containerColor),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: value
            ? const Icon(
          Icons.check,
          size: 10.0,
          color: Colors.white,
        )
            : const Icon(
          Icons.check_box_outline_blank,
          size: 10.0,
          color: ColorManger.containerColor,
        ),
      ),
    );
  }
}
