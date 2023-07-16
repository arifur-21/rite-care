
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritecare_hms/screens/navigation/pageOne.dart';
import 'package:ritecare_hms/screens/navigation/pageThree.dart';
import 'package:ritecare_hms/screens/navigation/pageTwo.dart';
import 'package:ritecare_hms/screens/navigation/pageFour.dart';
import 'package:ritecare_hms/screens/patient/patient_info/patien_info_screen.dart';
import 'package:ritecare_hms/screens/patient/patient_list/patient_list_screen.dart';
import 'package:ritecare_hms/screens/user_profile_screen/user_profile_details_screen.dart';
import 'package:ritecare_hms/screens/lab_test/summery/summery_screen.dart';
import 'package:ritecare_hms/utils/color_styles.dart';
import 'package:ritecare_hms/widgets/app_bar_widget.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/popup_button_widget.dart';
import 'lab_test/lab_test_list/lab_test_list_screen.dart';
import 'lab_test/sample_list/simple_test_screen.dart';
import 'navigation/components/bottom_nav_widget.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var dropDownItemValue;
  int _currentIndex = 0;
  List<Widget>bodyItems = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour()
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child:DrawerWidget(),
        ),
        appBar: AppBar(
          backgroundColor: Styles.primaryColor,
          actions: [
            AppBarWidget(),


          ],
        ),
      body: BottomNavWidget(),


      ),
    );
  }


}
