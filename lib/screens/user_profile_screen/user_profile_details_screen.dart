
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/utils/screen_main_padding.dart';

import '../../data/response/status.dart';
import '../../utils/color_styles.dart';
import '../../view_model/user_profile_view_model/user_profile_view_model.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/drawer_widget.dart';
import '../../widgets/popup_button_widget.dart';
import 'components/profile_image_container_widget.dart';
import 'components/profile_use_data_view_widget.dart';
import '../../widgets/reuseable_header_container_widget.dart';

class UserProfileDetailsScreen extends StatefulWidget {
  static const routeName = "/profile";

  @override
  _UserProfileDetailsScreenState createState() => _UserProfileDetailsScreenState();
}

class _UserProfileDetailsScreenState extends State<UserProfileDetailsScreen> {
  final userProfileVM = Get.put(UserProfileViewModel());

  @override
  void initState() {
   userProfileVM.getUserProfile();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        child:DrawerWidget(),
      ),

      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        actions: [
          AppBarWidget(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ScreenMainPadding.screenPadding),
          child: Column(
           children: [
             SizedBox(height: 10,),
             ReuseableHeaderContainerWidget(
               titleText: '',
               leadingText: 'User Details',
               tralingIcon: "assets/icons/cancel.png",
               onTap: (){
                 Get.back();
               },

             ),


             SizedBox(height: 20,),

             Container(
               height: 150,
               width: 150,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(150),
                 border: Border.all(width: 1, color: Colors.grey),
                 image: DecorationImage(
                     fit: BoxFit.cover,
                     image:
                     AssetImage('assets/images/profile.png')),
               ),
             ),

             SizedBox(height: 20,),

             Obx((){
               switch(userProfileVM.rxRequestStatus.value){
                 case Status.LOADING:
                   return Center(child:  CircularProgressIndicator(),);

                 case Status.ERROR:
                   print("error ${userProfileVM.error.value.toString()}");
                   return Text(userProfileVM.error.value.toString());

                 case Status.SUCCESS:

                   print("profile ${userProfileVM.userProfile.value.userName}");
                  return Column(
                     children: [
                       ProfileUserDataViewWidget(title: "User Name",information: "${userProfileVM.userProfile.value.userName}"),
                       ProfileUserDataViewWidget(title: "Name",information: "${userProfileVM.userProfile.value.fullName}"),
                       ProfileUserDataViewWidget(title: "Phone Number",information: "${userProfileVM.userProfile.value.phoneNumber}"),
                       ProfileUserDataViewWidget(title: "E-Mail",information: "${userProfileVM.userProfile.value!.coa?.companyEmail}"),
                       ProfileUserDataViewWidget(title: "Address",information: "${userProfileVM.userProfile.value!.coa?.companyAddress}"),
                       ProfileUserDataViewWidget(title: "Assign Role",information: ""),
                       SizedBox(height: 20,)
                     ],
                   );


              }
             }),



           ],
          ),
        ),
      )
    );
  }


}