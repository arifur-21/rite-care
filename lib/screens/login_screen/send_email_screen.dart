
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:ritecare_hms/resources/app_url/app_url.dart';
import 'package:ritecare_hms/screens/login_screen/sign_in_screen.dart';

import 'package:ritecare_hms/screens/login_screen/widgets/resueable_text_editable_widget.dart';
import 'package:ritecare_hms/utils/color_styles.dart';
import 'package:ritecare_hms/utils/screen_main_padding.dart';
import 'package:ritecare_hms/widgets/rounded_button.dart';

import '../../model/login_model/send_email_model.dart';
import '../../resources/routes/routes.dart';
import '../../services/splash_services.dart';
import '../../shere_preference/login_preference.dart';
import '../../widgets/rite_image_container_widget.dart';
import '../../widgets/rite_solutions_text_widget.dart';
import '../languages/Widgets/language_toggle_btn_widget.dart';


class SendEmailScreen extends StatefulWidget {
  dynamic baseUrl = '';


  SendEmailScreen({this.baseUrl});

  @override
  State<SendEmailScreen> createState() => _SendEmailScreenState();
}

class _SendEmailScreenState extends State<SendEmailScreen> {

  LoginPreference loginPreference = LoginPreference();
  TextEditingController sendEmailController = TextEditingController();
  final appUrl = Get.put(AppUrl());
  final _formKey = GlobalKey<FormState>();
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    setState(() {


    //  splashServices.enterBaseUrl();
      if(widget.baseUrl == null){
        sendEmailController.text = '';
      }else{
        sendEmailController.text = widget?.baseUrl;
      }
     // print("bi ${widget.baseUrl}");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.more_vert_outlined, size: 30,),

        ],
        backgroundColor: Styles.primaryColor,
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:  EdgeInsets.all(ScreenMainPadding.screenPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 76,
                      width: 143,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/icons/rite.png')
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("App Configuration", style: Styles.aliceGreentText30_400),

                    ],),
                    SizedBox(height: 40,),
                    Text("Sign in to continue", style: TextStyle(fontFamily: 'IstokWeb', fontSize: 15, color: Styles.greyColor),),

                     SizedBox(height: 20,),

                    Form(
                      key: _formKey,
                        child: Column(
                          children: [
                            ResueableEmailTextFieldWidget(
                              emailController: sendEmailController,
                              hintText: "Please provide the URL link",
                            ),

                          ],)),

                  ],
                ),

                SizedBox(height: 30,),
                RoundedButton(
                  width: Get.width * 0.95,
                    title: "Submit".tr,
                    color: Styles.textGreen,
                    onTap: (){
                      AppUrl();
                    //  appUrl.sendEmail(baseUrl: sendEmailController.value.text);
                     // appUrl.mainData();
                      SendEmailModel  send = SendEmailModel(
                          sendEamil: sendEmailController.value.text
                      );
                       loginPreference.seveSendEmail(send);

                      if(_formKey.currentState!.validate()){
                        Get.to(SignInScreen());
                      }


                    }),



                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Styles.primaryColor
                        ),
                        child: Icon(Icons.question_mark_outlined,color: Colors.white,size: 20,),
                    ),
                    SizedBox(width: 20,),
                    Text("Needs Help!", style: Styles.normalGreenTextStyle20_700),
                  ],
                ),

                SizedBox(height:120),
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
        ),
      )
    );
  }


}
