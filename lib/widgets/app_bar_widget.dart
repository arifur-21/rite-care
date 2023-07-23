import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/screens/patient_registration/short_form_register.dart';
import 'package:ritecare_hms/screens/search_screen/search_patient_Screen.dart';
import 'package:ritecare_hms/shere_preference/login_preference.dart';
import 'package:ritecare_hms/utils/color_styles.dart';
import 'package:ritecare_hms/widgets/popup_button_widget.dart';

import '../view_model/patient_list_view_model/patient_list_view_model.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  final LoginPreference loginPreference = LoginPreference();
  final patientListVM = Get.put(PatientListViewModel());

  bool isPatientSelected = false;
  @override
  void initState() {
    loginPreference.getServiceId().then(
        (value) => setState(() => patientListVM.isPatientSelected.value = value.serviceId != null));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                //Get.toNamed(RoutesName.patientSearchScreen);
                Get.to(PatientSearch());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_outlined,
                    size: 18,
                    color: patientListVM.isPatientSelected.value ? Colors.redAccent : Colors.white,
                  ),
                  Text(
                    "Search",
                    style: Styles.aliceFontWhiteColor14_400,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                // Get.toNamed(RoutesName.registerFormScreen);
                Get.to(RegistrShortForm());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.app_registration,
                    size: 18,
                  ),
                  Text(
                    "Register",
                    style: Styles.aliceFontWhiteColor14_400,
                  )
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
