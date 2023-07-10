
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/utils/screen_main_padding.dart';
import 'package:ritecare_hms/widgets/rite_image_container_widget.dart';
import 'package:ritecare_hms/widgets/rounded_button.dart';

import '../../resources/routes/routes.dart';
import '../../utils/color_styles.dart';
import '../languages/Widgets/language_toggle_btn_widget.dart';

class LinkSendEnailLoginScreen extends StatefulWidget {
  const LinkSendEnailLoginScreen({Key? key}) : super(key: key);

  @override
  State<LinkSendEnailLoginScreen> createState() => _LinkSendEnailLoginScreenState();
}

class _LinkSendEnailLoginScreenState extends State<LinkSendEnailLoginScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.more_vert_outlined, size: 30,)
        ],
        backgroundColor: Styles.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(ScreenMainPadding.screenPadding),
              child: Column(
                children: [
                  RiteImageContainerWidet(),

                  SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text("forgot_pass".tr, textAlign: TextAlign.start, style: Styles.aliceGreentText28_400)

                      ),

                      LanguageToggleBtnWidget()

                    ],
                  ),
                  SizedBox(height: 100,),
                   Text("send_link".tr, textAlign: TextAlign.center, style: Styles.istokGreenText24_700),


                  SizedBox(height: 40,),


                  RoundedButton(
                    width: Get.width * 0.95,
                      title: "log_in".tr, color: Styles.textGreen,
                      onTap: (){
                        Get.toNamed(RoutesName.homeScreen);
                      }),

                  SizedBox(height: 130,),
                  Container(
                    height: 23,
                    width: 240,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/solution.png')
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
