
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/screens/patient_registration/short_form_register.dart';
import 'package:ritecare_hms/screens/search_screen/search_patient_Screen.dart';
import 'package:ritecare_hms/utils/color_styles.dart';
import 'package:ritecare_hms/widgets/popup_button_widget.dart';

import '../resources/routes/routes.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            InkWell(
              onTap: (){
                //Get.toNamed(RoutesName.patientSearchScreen);
                Get.to(PatientSearch());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Icon(Icons.search_outlined,size: 18,),
                  Text("Search", style: Styles.aliceFontWhiteColor14_400,)

                ],
              ),
            ),

            SizedBox(width: 10,),

            InkWell(
              onTap: (){
                Navigator.pop(context);
               // Get.toNamed(RoutesName.registerFormScreen);
                Get.to(RegistrShortForm());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.app_registration, size: 18,),

                  Text("Register", style: Styles.aliceFontWhiteColor14_400,)

                ],
              ),
            ),

            PopUpButtonWidget(),
          ],
        ),
      ),
    );
  }
}
