
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/screens/login_screen/sign_in_screen.dart';
import 'package:ritecare_hms/shere_preference/login_preference.dart';

import '../resources/routes/routes.dart';
import '../screens/lab_test/summery/components/lab12_screen.dart';
import '../screens/user_profile_screen/user_profile_details_screen.dart';
import '../utils/color_styles.dart';

class PopUpButtonWidget extends StatelessWidget {

PopUpButtonWidget({Key? key}) : super(key: key);

  LoginPreference loginPreference = LoginPreference();

  @override
  Widget build(BuildContext context) {

    return PopupMenuButton(
        icon: Icon(Icons.more_vert_outlined, size: 35,),
        itemBuilder: (context) =>
        [
          PopupMenuItem(

              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                       // Get.toNamed(RoutesName.userProfileScreen);
                        Get.to(UserProfileDetailsScreen());
                      },
                      child: Row(
                        children: [
                          Container(
                              width: 25,
                              height: 25,

                              decoration: BoxDecoration(
                                  color: Styles.primaryColor,
                                  borderRadius: BorderRadius.circular(3)
                              ),
                              child: Icon(Icons.person, color: Colors.white,size: 25,)
                          ),
                          SizedBox(width: 10,),
                          Text("Profile",style: Styles.poppinsFontGreen12_400)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap:(){
                        Get.to(SignInScreen());

                       /* loginPreference.removeLoginToken().then((value){

                        });*/
                      },
                      child: Row(
                        children: [
                          Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Styles.primaryColor,
                                  borderRadius: BorderRadius.circular(3)
                              ),
                          child: Icon(Icons.login_outlined, color: Colors.white,size: 20,)),
                          SizedBox(width: 10,),
                          Text("Logout", style: Styles.poppinsFontGreen12_400)
                        ],
                      ),
                    ),
                  ],
                ),
              )),

        ]);
  }


}
