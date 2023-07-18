

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/screens/login_screen/sign_in_screen.dart';
import 'package:ritecare_hms/screens/login_screen/widgets/resueable_text_editable_widget.dart';
import 'package:ritecare_hms/utils/screen_main_padding.dart';
import 'package:ritecare_hms/widgets/rite_image_container_widget.dart';
import 'package:ritecare_hms/widgets/rounded_button.dart';

import '../../resources/routes/routes.dart';
import '../../utils/color_styles.dart';
import '../languages/Widgets/language_toggle_btn_widget.dart';


class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController sendEmailController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Icon(Icons.more_vert_outlined, size: 30,),
            Icon(Icons.calendar_month_outlined, size: 30,)
          ],
          backgroundColor: Styles.primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 20,),
              Padding(
                padding:  EdgeInsets.all(ScreenMainPadding.screenPadding),
                child: Column(
                  children: [
                    RiteImageContainerWidet(),

                    SizedBox(height: 20,),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Text("forgot_pass".tr, textAlign: TextAlign.start, style: Styles.aliceGreentText24_400)

                        ),

                        LanguageToggleBtnWidget()

                      ],
                    ),


                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Expanded(
                          child: Text("pass_reset".tr, textAlign: TextAlign.center, style: Styles.istokGreenText24_700)),
                    ),
                    SizedBox(height: 30,),

                    ResueableEmailTextFieldWidget(
                      emailController: sendEmailController,
                      hintText: "email_hint".tr,
                    ),

                    SizedBox(height: 40,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RoundedButton(
                            width: Get.width * 0.4,
                            title: "back_btn".tr, color: Styles.textGreen, onTap: (){
                          Get.back();
                        }),
                        RoundedButton(
                            width: Get.width * 0.4,
                            title: "submit_btn".tr, color: Styles.textGreen, onTap: (){
                          Get.toNamed(RoutesName.emailLinkSendScreen);

                        }),
                      ],),


                    SizedBox(height: 50,),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
