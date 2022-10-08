import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tatware_assessment/components/base_widgets/custom_text.dart';
import 'package:tatware_assessment/components/resources/color_manger.dart';
import 'package:tatware_assessment/components/resources/size_manger.dart';
import 'package:tatware_assessment/get_start/presentation/widgets/circular_image.dart';
import 'package:tatware_assessment/get_start/presentation/widgets/panel_items_widget.dart';
import 'package:tatware_assessment/get_start/presentation/widgets/profile_card_widget.dart';
import 'package:tatware_assessment/get_start/profile_model.dart';

import '../../../components/base_widgets/custom_app_bar.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(),
      body: SlidingUpPanel(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        minHeight: myHeight * 0.035,
        panel: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.horizontal_rule,
              color: ColorManger.grey.withOpacity(0.2),
              size: 40,
            ),
            SizedBox(
              height: myHeight * 0.02,
            ),
            SizedBox(
              height: myHeight*0.5,
              child: ListView.builder(
                itemCount: slidePanel.length,
                itemBuilder: (context, index) {
                  var items = slidePanel[index];
                      return Column(
                        children: [
                          PanelItems(image: items.iconImage,name: items.name,description: items.description,),
                          SizedBox(height: myHeight*0.02,)
                        ],
                      );
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: myWidth * 0.06,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                          textLabel: 'Recommended Experts',
                          customTextType: CustomTextType.custom,
                          myTxtSize: FontSizeManger.s16,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: ColorManger.grey,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: myHeight * 0.02,
                    ),
                    SizedBox(
                      height: myHeight * 0.34,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: myProfile.length,
                          itemBuilder: (context, index) {
                            final profile = myProfile[index];
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ProfileCardWidget(
                                    profileImage: profile.image,
                                    rate: profile.rate.toString(),
                                    name: profile.name,
                                    description: profile.description),
                                SizedBox(
                                  width: myWidth * 0.05,
                                ),
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: myHeight * 0.02,
                    ),
                    const CustomText(
                        textLabel: 'Online Experts',
                        customTextType: CustomTextType.main),
                    SizedBox(
                      height: myHeight * 0.02,
                    ),
                    SizedBox(
                      height: myHeight * 0.15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return CircularImage(
                            userName: user,
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              label: ''),
        ],
      ),
    );
  }
}
