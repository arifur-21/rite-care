

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:ritecare_hms/screens/languages/Widgets/language_toggle_btn_widget.dart';
import 'package:ritecare_hms/screens/login_screen/send_email_screen.dart';
import 'package:ritecare_hms/screens/login_screen/widgets/resueable_text_editable_widget.dart';
import 'package:ritecare_hms/screens/login_screen/widgets/resueable_text_field_password_widget.dart';
import 'package:ritecare_hms/shere_preference/login_preference.dart';
import 'package:ritecare_hms/utils/color_styles.dart';
import 'package:ritecare_hms/utils/screen_main_padding.dart';
import 'package:ritecare_hms/view_model/login_view_model/login_view_model.dart';

import '../../resources/app_url/app_url.dart';
import '../../resources/routes/routes.dart';
import '../../services/splash_services.dart';
import '../../widgets/rite_image_container_widget.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final loginVm = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();
  LoginPreference loginPreference = LoginPreference();

  bool isClick = true;
  SplashServices splashServices = SplashServices();
  final appUrl = Get.put(AppUrl());
  dynamic url;
  bool isChecked = false;

  late Box box1;


  @override
  void initState() {
    setState(() {

      createBox();
      isClick = !isClick;
    //  splashServices.isLogin();
      loginPreference.getSendEmail().then((value){
       url = value.sendEamil;

      });

    });
    super.initState();
  }

  void createBox() async{
    box1 = await Hive.openBox("loginData");
    getData();
  }

  void getData()async{
    if(box1.get('email')!=null){
      loginVm.emailController.value.text = box1.get("email");
      isChecked = true;
      setState(() {

      });
    }
    if(box1.get('pass')!=null){
      loginVm.passwordController.value.text = box1.get("pass");
      isChecked = true;
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
           appBar: AppBar(
             automaticallyImplyLeading: false,
             actions: [
               Icon(Icons.more_vert_outlined, size: 30,)
             ],
             backgroundColor: Styles.primaryColor,
           ),

          body: Container(
            child: Padding(
              padding:  EdgeInsets.all(ScreenMainPadding.screenPadding),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    RiteImageContainerWidet(
                      onTap: (){
                        loginPreference.removeLoginToken().then((value){
                          Get.to(SendEmailScreen(baseUrl: url,));
                        });

                  //    Navigator.push(context, MaterialPageRoute(builder: (context)=> SendEmailScreen()));
                    },),
                    SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("sign_in".tr, style: Styles.aliceGreentText35_400),
                            LanguageToggleBtnWidget()
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("continue".tr, style: TextStyle(fontFamily: 'IstokWeb', fontSize: 15, color: Styles.greyColor),),


                      SizedBox(height: 10,),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [

                              ResueableEmailTextFieldWidget(
                                emailController: loginVm.emailController.value,
                                hintText: "email_hint".tr,),

                              SizedBox(height: 20,),
                              ResueableTextFieldPasswordWidget(
                                controllerText: loginVm.passwordController.value,)
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30,),


                    Obx(() =>
                        ElevatedButton(
                          onPressed: (){
                            setState(() {
                              AppUrl();
                            //  appUrl.sendEmail();
                              if(_formKey.currentState!.validate()){
                                login();
                                loginVm.loginApi();
                              }
                            });
                          }, child:  Center(
                            child: loginVm.loading.value? Center(child: CircularProgressIndicator(),) :
                            Text("log_in".tr,style: Styles.btnTextColor)),
                          style: ElevatedButton.styleFrom(
                              primary: Styles.primaryColor,
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              )
                          ),
                        ),
                    ),

                    SizedBox(height: 10,),

                     Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.greenAccent,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = !isChecked;
                              print(isChecked);
                            });
                          },
                        ),
                        Text(
                          "Remember Me",
                          style: TextStyle(
                              fontSize: 16, color: Styles.drawerListColor),
                        ),
                      ],
                    ),

                    InkWell(
                      onTap: (){
                        Get.toNamed(RoutesName.forgotPassScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.lock, size: 26, color: Styles.primaryColor,),
                          SizedBox(width: 10,),
                      Text("forgot_pass1".tr, style: Styles.normalGreenTextStyle20_700),
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Styles.primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("success_text".tr, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),)),
                      ),
                    ),

                    SizedBox(height: 20,),
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
      ),
    );
  }

  void login(){
    if(isChecked){
      box1.put("email", loginVm.emailController.value.text);
      box1.put("pass", loginVm.passwordController.value.text);
    }
  }


}
