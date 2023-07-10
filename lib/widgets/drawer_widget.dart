
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/utils/color_styles.dart';


import '../resources/routes/routes.dart';
import '../screens/lab_test/lab_test_list/lab_test_list_screen.dart';
import '../screens/lab_test/sample_list/simple_test_screen.dart';
import '../screens/navigation/pageOne.dart';
import '../screens/ot_management/Ot_management_screen.dart';
import '../screens/patient/patient_info/patien_info_screen.dart';
import '../screens/lab_test/summery/summery_screen.dart';
import '../screens/patient/patient_list/patient_list_screen.dart';
import '../view_model/lab_test_list_view_model/lab_test_list_view_model.dart';
import '../view_model/patient_list_view_model/patient_list_view_model.dart';
import '../view_model/sampleListViewModel/sample_list_view_model.dart';
import '../view_model/summery_view_model/summery_view_model.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  final sampleVm = Get.put(SampleListVeiewModel());
  final labTestListVm = Get.put(LabTestListViewModel());
  final patinetListVM = Get.put(PatientListViewModel());
  final summeryVm = Get.put(SummeryViewModel());

  bool isColorChange = false;
  bool islabTestToggle = false;
  bool isAppointmentToggle = false;
  bool isTreatmentLogToggle = false;
  bool isAdminToggle = false;
  bool isReportToggle = false;
  bool isMisReportToggle = false;
  bool isOtToggle = false;
  bool isOtSchedulingToggle = false;
  bool isOtManagementToggle = false;


  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [

              InkWell(
                onTap: (){
                  Get.to(PageOne());
                },
                child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Color(0xff63b077),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/icons/logo.png')
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ),

              ExpansionTile(
                title: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('assets/icons/patients.png')
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text("Patient", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: isColorChange ? Colors.red : Styles.drawerListColor,fontFamily: 'Poppins'),)
                  ],
                ),
                trailing: Icon(
                  isColorChange
                  ?Icons.remove_outlined : Icons.add, size: 30,
                  color: isColorChange ? Colors.red : Styles.drawerListColor,
                  ),
                onExpansionChanged: (bool expanded){
                  setState(() {
                    isColorChange = expanded;
                  });
                },
                children: [
                  SizedBox(height: 10,),
                  _drawerSublistWidget(
                      subTitle: "Patient Info",
                      onTap: (){
                        Navigator.pop(context);
                      Get.to(PatientInfoScreen());
                       // Get.toNamed(RoutesName.patientInfoScreen);
                      },
                      image: 'assets/icons/file.png'),

                  _drawerSublistWidget(
                      subTitle: "Patient List",
                      onTap: (){
                        Navigator.pop(context);
                       //patinetListVM.getPatientList(statusId: 0,page: 1);
                        Get.to(PatientListScreen());

                      },
                      image: 'assets/icons/patientlist.png'),

                ],

              ),

           ///////////--------> lab test ---------------->/////////
              ExpansionTile(

                title: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('assets/icons/lab.png')
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text("Lab Test", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: islabTestToggle ? Colors.red : Styles.drawerListColor,fontFamily: 'Poppins'),)
                  ],
                ),
                trailing: Icon(
                  islabTestToggle
                      ? Icons.remove_outlined : Icons.add, size: 30,
                  color: islabTestToggle ? Colors.red: Styles.drawerListColor
                ),
                onExpansionChanged: (bool expanded){
                  setState(() {
                    islabTestToggle = expanded;
                  });
                },
                children: [
                  SizedBox(height: 10,),

                  Divider(height: 2,color: Colors.grey,),
                  SizedBox(height: 5,),

                  _drawerSublistWidget(
                      subTitle: "Summary",
                      onTap: (){

               //         summeryVm.getSummeryListData(serviceId: 0);
                        Navigator.pop(context);
                      //  Get.toNamed(RoutesName.patientSummerySreen);
                        Get.to(PatientSummeryScreen());
                      },
                      image: 'assets/icons/summery.png'),
                  SizedBox(height: 5,),
                  Divider(height: 2,color: Colors.grey,),
                  SizedBox(height: 5,),

                  _drawerSublistWidget(
                      subTitle: "Sample List",
                      onTap: (){
                       // sampleVm.getSampleListData(serviceId: 0);
                        Navigator.pop(context);
                      //  Get.toNamed(RoutesName.sampleListScreen);
                        Get.to(SampleList());
                      },
                      image: 'assets/icons/samplelist.png'),
                  SizedBox(height: 5,),
                  Divider(height: 2,color: Colors.grey,),
                  SizedBox(height: 5,),

                  _drawerSublistWidget(
                      subTitle: "Lab Test List",
                      onTap: (){
                        Get.to(LatTestListScreen());
                      },
                      image: 'assets/icons/labtestlist.png'),
                  SizedBox(height: 5,),
                  Divider(height: 2,color: Colors.grey,),
                  SizedBox(height: 5,),

                /*  _drawerSublistWidget(
                      subTitle: "Nurse Station",
                      onTap: (){},
                      image: 'assets/icons/nurse.png'),*/
                ],

              ),

              ExpansionTile(

                title: Row(
                  children: [
                    Image.asset('assets/icons/appointment.png', height: 25, width: 25,),
                    SizedBox(width: 15,),
                    Text("OT", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: isOtToggle ? Colors.red: Styles.drawerListColor,fontFamily: 'Poppins'),)
                  ],
                ),
                trailing: Icon(
                  isOtToggle
                      ? Icons.remove_outlined : Icons.add, size: 30,
                  color: isOtToggle ? Colors.red : Styles.drawerListColor,
                ),
                onExpansionChanged: (bool expand){
                  setState(() {
                    isOtToggle = expand;
                  });
                },
                children: [
                  SizedBox(height: 10,),

                 /* ExpansionTile(

                    title: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(

                            image: DecorationImage(
                                image: AssetImage('assets/icons/appointment.png')
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Text("OT Scheduling", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: isOtSchedulingToggle ? Colors.red: Styles.drawerListColor,fontFamily: 'Poppins'),)
                      ],
                    ),
                    trailing: Icon(
                      isOtSchedulingToggle
                          ? Icons.remove_outlined : Icons.add, size: 30,
                      color: isOtSchedulingToggle ? Colors.red : Styles.drawerListColor,
                    ),
                    onExpansionChanged: (bool expand){
                      setState(() {
                        isOtSchedulingToggle = expand;
                      });
                    },
                    children: [
                      SizedBox(height: 10,),

                      _drawerSublistWidget(
                          subTitle: "Summary",
                          onTap: (){},
                          image: 'assets/icons/lab_test.png'),
                      Divider(height: 2,color: Colors.grey,),
                    ],

                  ),*/ /// ot


                  ExpansionTile(

                    title: Row(
                      children: [
                        SizedBox(width: 15,),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(

                            image: DecorationImage(
                                image: AssetImage('assets/icons/otmanage.png')
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Text("OT Management", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: isOtManagementToggle ? Colors.red: Styles.drawerListColor,fontFamily: 'Poppins'),)
                      ],
                    ),
                    trailing: Icon(
                      isOtManagementToggle
                          ? Icons.remove_outlined : Icons.add, size: 30,
                      color: isOtManagementToggle ? Colors.red : Styles.drawerListColor,
                    ),
                    onExpansionChanged: (bool expand){
                      setState(() {
                        isOtManagementToggle = expand;
                      });
                    },
                    children: [
                      SizedBox(height: 10,),

                      _drawerSublistWidget(
                          subTitle: "OT List",
                          onTap: (){
                            //Get.toNamed(RoutesName.otManagementScreen);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>OtManagementScreen()));
                          },
                          image: 'assets/icons/otscheduling.png'),
                    //  Divider(height: 2,color: Colors.grey,),
                    ],

                  ),

                  Divider(height: 2,color: Colors.grey,),
                ],

              ),



/*

              ExpansionTile(

                title: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('assets/icons/appointment.png')
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text("Appointment", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: isAppointmentToggle ? Colors.red: Styles.drawerListColor,fontFamily: 'Poppins'),)
                  ],
                ),
                trailing: Icon(
                  isAppointmentToggle
              ? Icons.remove_outlined : Icons.add, size: 30,
                  color: isAppointmentToggle ? Colors.red : Styles.drawerListColor,
              ),
      onExpansionChanged: (bool expand){
          setState(() {
            isAppointmentToggle = expand;
          });
      },
                children: [
                  SizedBox(height: 10,),

                  _drawerSublistWidget(
                      subTitle: "Summary",
                      onTap: (){},
                      image: 'assets/icons/lab_test.png'),
                  Divider(height: 2,color: Colors.grey,),
                ],

              ),
              ExpansionTile(
                title: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('assets/icons/appointment.png')
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text("Treatment Log", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: isTreatmentLogToggle ? Colors.red: Styles.drawerListColor,fontFamily: 'Poppins'),)
                  ],
                ),
                trailing: Icon(
                  isTreatmentLogToggle
                      ? Icons.remove_outlined : Icons.add, size: 30,
                  color: isTreatmentLogToggle ? Colors.red : Styles.drawerListColor,
                ),
                onExpansionChanged: (bool expand){
                  setState(() {
                    isTreatmentLogToggle = expand;
                  });
                },
                children: [
                  SizedBox(height: 10,),

                  _drawerSublistWidget(
                      subTitle: "Summary",
                      onTap: (){},
                      image: 'assets/icons/lab_test.png'),
                  Divider(height: 2,color: Colors.grey,),
                ],

              ),
              ExpansionTile(
                title: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('assets/icons/appointment.png')
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text("Admin", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: isAdminToggle ? Colors.red: Styles.drawerListColor,fontFamily: 'Poppins'),)
                  ],
                ),
                trailing: Icon(
                  isAdminToggle
                      ? Icons.remove_outlined : Icons.add, size: 30,
                  color: isAdminToggle ? Colors.red : Styles.drawerListColor,
                ),
                onExpansionChanged: (bool expand){
                  setState(() {
                    isAdminToggle = expand;
                  });
                },
                children: [
                  SizedBox(height: 10,),

                  _drawerSublistWidget(
                      subTitle: "Summary",
                      onTap: (){},
                      image: 'assets/icons/lab_test.png'),
                  Divider(height: 2,color: Colors.grey,),
                ],

              ),
              ExpansionTile(
                title: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('assets/icons/appointment.png')
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text("Report", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: isReportToggle ? Colors.red: Styles.drawerListColor,fontFamily: 'Poppins'),)
                  ],
                ),
                trailing: Icon(
                  isReportToggle
                      ? Icons.remove_outlined : Icons.add, size: 30,
                  color: isReportToggle ? Colors.red : Styles.drawerListColor,
                ),
                onExpansionChanged: (bool expand){
                  setState(() {
                    isReportToggle = expand;
                  });
                },
                children: [
                  SizedBox(height: 10,),

                  _drawerSublistWidget(
                      subTitle: "Summary",
                      onTap: (){},
                      image: 'assets/icons/lab_test.png'),
                  Divider(height: 2,color: Colors.grey,),
                ],

              ),
              ExpansionTile(
                title: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('assets/icons/appointment.png')
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text("MIS Report", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: isMisReportToggle ? Colors.red: Styles.drawerListColor,fontFamily: 'Poppins'),)
                  ],
                ),
                trailing: Icon(
                  isMisReportToggle
                      ? Icons.remove_outlined : Icons.add, size: 30,
                  color: isMisReportToggle ? Colors.red : Styles.drawerListColor,
                ),
                onExpansionChanged: (bool expand){
                  setState(() {
                    isMisReportToggle = expand;
                  });
                },
                children: [
                  SizedBox(height: 10,),

                  _drawerSublistWidget(
                      subTitle: "Summary",
                      onTap: (){},
                      image: 'assets/icons/lab_test.png'),
                  Divider(height: 2,color: Colors.grey,),
                ],

              ),
*/




            ],
          ),
        )
    );
  }



  Widget _drawerSublistWidget({
    required String subTitle,
    required VoidCallback onTap,
    required String image
  }){
    return Padding(
      padding: const EdgeInsets.only(left: 40, bottom: 10),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(width: 15,),
            Container(
              height:20,
              width: 20,
              decoration: BoxDecoration(

                image: DecorationImage(
                    image: AssetImage(image)
                ),
              ),
            )
            ,
            SizedBox(width: 15,),
            Text(subTitle,style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff01BE84),))

          ],),
      ),
    );
  }

}
