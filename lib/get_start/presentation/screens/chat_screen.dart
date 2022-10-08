import 'package:flutter/material.dart';
import 'package:tatware_assessment/components/base_widgets/custom_text.dart';
import 'package:tatware_assessment/components/components.dart';
import 'package:tatware_assessment/components/resources/assets_manger.dart';
import 'package:tatware_assessment/components/resources/color_manger.dart';
import 'package:tatware_assessment/get_start/presentation/screens/home_page.dart';
import 'package:tatware_assessment/get_start/presentation/widgets/chat_widget.dart';

import '../widgets/selection_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorManger.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: myHeight * 0.05, horizontal: myWidth * 0.05),
            child: Column(
              children: [
                const BuildChatWidget(
                    sendingMessage: 'Abdalla',
                    sentMessage: 'Hi, Whats You Name Firstname?'),
                SizedBox(
                  height: myHeight * 0.02,
                ),
                const BuildChatWidget(
                    sendingMessage: 'Salah',
                    sentMessage: 'Ok, Abdalla Whats Your Lastname?'),
                SizedBox(
                  height: myHeight * 0.02,
                ),
                const BuildChatWidget(
                    sendingMessage: 'Front-end Developer',
                    sentMessage: "Mr Abdalla Salah, What's your Title?"),
                SizedBox(
                  height: myHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: myWidth * 0.015,
                            vertical: myHeight * 0.015),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManger.containerColor.withOpacity(0.3)),
                        child: const ImageIcon(
                          AssetImage(ImageAssets.chatImage),
                          color: ColorManger.mainColor,
                        )),
                    SizedBox(
                      width: myWidth * 0.03,
                    ),
                    Container(
                      width: myWidth * 0.7,
                      padding: EdgeInsets.only(
                          right: myHeight * 0.02,
                          left: myWidth * 0.04,
                          top: myHeight * 0.015,
                          bottom: myHeight * 0.015),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorManger.containerColor.withOpacity(0.3),
                      ),
                      child: const CustomText(
                          textLabel: 'What Categories you will need expert In?',
                          customTextType: CustomTextType.normal),
                    )
                  ],
                ),
                SizedBox(
                  height: myHeight * 0.04,
                ),
                const BuildSelectionWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: SizedBox(
        height: myHeight * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: myWidth*0.02,vertical: myHeight*0.01),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorManger.containerColor.withOpacity(0.3),
              ),
              child: Row(
                children: [
                  const Icon(Icons.language_outlined),
                  SizedBox(width: myWidth*0.02,),
                  SizedBox(
                    width: myWidth * 0.65,
                    child: const TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Press Send Button to navigate to Home'),
                    ),
                  ),
                  const Icon(
                    Icons.mic,
                  ),
                ],
              ),
            ),
             IconButton(
              onPressed: (){
                navigateTo(context,const HomePageScreen());
              },
              icon: const Icon(Icons.send,
              color: ColorManger.mainColor,
            ),),
          ],
        ),
      ),
    );
  }
}
