
import 'package:get/get.dart';
import 'package:ritecare_hms/resources/routes/routes.dart';
import 'package:ritecare_hms/screens/home_screen.dart';
import 'package:ritecare_hms/screens/lab_test/lab_test_list/lab_test_list_details.dart';
import 'package:ritecare_hms/screens/lab_test/sample_list/simple_test_screen.dart';
import 'package:ritecare_hms/screens/lab_test/summery/summery_screen.dart';
import 'package:ritecare_hms/screens/login_screen/forgot_pass_screen.dart';
import 'package:ritecare_hms/screens/login_screen/forgot_password_screen.dart';
import 'package:ritecare_hms/screens/login_screen/link_send_email_login_screen.dart';
import 'package:ritecare_hms/screens/login_screen/send_email_screen.dart';
import 'package:ritecare_hms/screens/login_screen/sign_in_screen.dart';
import 'package:ritecare_hms/screens/login_screen/slider_screen/slider_screen.dart';
import 'package:ritecare_hms/screens/ot_management/Ot_management_screen.dart';
import 'package:ritecare_hms/screens/patient/patient_info/patien_info_screen.dart';
import 'package:ritecare_hms/screens/patient/patient_list/patient_list_screen.dart';
import 'package:ritecare_hms/screens/patient_registration/short_form_register.dart';
import 'package:ritecare_hms/screens/search_screen/search_patient_Screen.dart';

import '../../screens/lab_test/lab_test_list/lab_test_list_screen.dart';
import '../../screens/user_profile_screen/user_profile_details_screen.dart';

class AppRoutes{

  static appRoutes ()=>[
    GetPage(name: RoutesName.sliderScreen, page: ()=>SliderScreen(), transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 250)),


    GetPage(name: RoutesName.sendEmalScreen, page: ()=>SendEmailScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.signInScreen, page: ()=>SignInScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.forgotPassScreen, page: ()=>ForgotPasswordScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.emailLinkSendScreen, page: ()=>LinkSendEnailLoginScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.homeScreen, page: ()=>HomeScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.patientInfoScreen, page: ()=>PatientInfoScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.patient_listScreen, page: ()=>PatientListScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.patientSummerySreen, page: ()=>PatientSummeryScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.sampleListScreen, page: ()=>SampleList(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.labTestListScreen, page: ()=>LatTestListScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.patientSearchScreen, page: ()=>PatientSearch(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.registerFormScreen, page: ()=>RegistrShortForm(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.userProfileScreen, page: ()=>UserProfileDetailsScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

    GetPage(name: RoutesName.otManagementScreen, page: ()=>OtManagementScreen(), transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)),

  ];

}