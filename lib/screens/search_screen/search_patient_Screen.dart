import 'dart:convert';
import 'dart:math';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ritecare_hms/screens/home_screen.dart';
import 'package:ritecare_hms/screens/patient/patient_info/patien_info_screen.dart';

import 'package:ritecare_hms/screens/search_screen/search_item_screen.dart';

import 'package:ritecare_hms/utils/screen_main_padding.dart';
import 'package:ritecare_hms/utils/utils.dart';
import 'package:ritecare_hms/widgets/reuseable_text_filed.dart';
import 'package:ritecare_hms/widgets/rounded_button.dart';

import '../../data/app_exceptions.dart';
import '../../data/response/status.dart';
import '../../model/search_model/SearchModel.dart';

import '../../shere_preference/login_preference.dart';
import '../../utils/color_styles.dart';
import '../../view_model/serch_view_mode/SearchViewModel.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/drawer_widget.dart';
import '../../widgets/popup_button_widget.dart';
import '../../widgets/resuable_header.dart';
import '../../widgets/reuseable_header_container_widget.dart';
import 'package:http/http.dart' as http;

import 'conponents/search_list_widget.dart';

class PatientSearch extends StatefulWidget {
  const PatientSearch({super.key});

  @override
  State<PatientSearch> createState() => _PatientSearchState();
}

class _PatientSearchState extends State<PatientSearch> {


 bool isCheck = false;

  final searchVM = Get.put(SearchViewModel());
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formKey3 = GlobalKey<FormState>();




  @override
  void dispose() {
   searchVM.patientOfficialNumberController.close();
   searchVM.patientNameController.close();
   searchVM.patientCellNoController.close();
   searchVM.patienidController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child:DrawerWidget(),
        ),
        appBar: AppBar(
          backgroundColor: Styles.primaryColor,
          actions:  [
            AppBarWidget(),
          ],
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.all(ScreenMainPadding.screenPadding),
          child: Column(
            children: [



              SizedBox(height: 10,),
              Card (
                  color: Styles.primaryColor,
                  elevation: 8,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Patient Selection", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),

                              InkWell(
                                onTap: (){
                                  Get.back();
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/icons/cancel.png')
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )


                    ],
                  )
              ),
              SizedBox(height: 30,),

              Form(
                  key: _formKey2,
                  child: Column(
                    children: [

                      ResuableTextField(
                          onTap: (){
                            if(_formKey2.currentState!.validate()){
                              searchVM.searchPatient();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchItemScreen()));
                            }
                            searchVM.patientCellNoController.value.clear();
                            searchVM.patientNameController.value.clear();
                            searchVM.patientOfficialNumberController.value.clear();
                          },
                          errorMsg: "Please Enter Patient Id",
                          controllerValue: searchVM.patienidController.value,
                          icon: Icons.search_outlined,
                          hintText: "Patient Id"),
                    ],)),

              SizedBox(
                height: 15,
              ),

              Form (
                key: _formKey,
                  child: Column(
                    children: [

                      ResuableTextField(
                          onTap: ()async{

                            if(_formKey.currentState!.validate()) {
                            await searchVM.searchPatientCellNum();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchItemScreen()));
                            }
                            searchVM.patienidController.value.clear();
                            searchVM.patientNameController.value.clear();
                            searchVM.patientOfficialNumberController.value.clear();


                          },
                          errorMsg: "Please Enter Patient Cell No",
                          controllerValue:  searchVM.patientCellNoController.value,
                          icon: Icons.search_outlined,
                          hintText: "Patient Cell No"),
              ],)),

              SizedBox(
                height: 15,
              ),

              Form(
                  key: _formKey1,
                  child: Column(
                    children: [

                      ResuableTextField(
                          onTap: (){
                            if(_formKey1.currentState!.validate()){
                              searchVM.searchPatientByName();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchItemScreen()));
                            }
                            searchVM.patienidController.value.clear();
                            searchVM.patientOfficialNumberController.value.clear();
                             searchVM.patientCellNoController.value.clear();


                          },
                          errorMsg: "Please Enter Patient Name",
                          controllerValue: searchVM.patientNameController.value,
                          icon: Icons.search_outlined,
                          hintText: "Patient Name"),
                    ],)),

              SizedBox(
                height: 15,
              ),

              Form(
                  key: _formKey3,
                  child: Column(
                    children: [
                      ResuableTextField(
                          onTap: () async{
                            if(_formKey3.currentState!.validate()){
                              searchVM.searchPatientOfficalNo();
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchItemScreen()));
                            }
                             searchVM.patientNameController.value.clear();
                            searchVM.patienidController.value.clear();
                            searchVM.patientCellNoController.value.clear();


                          },
                          errorMsg: "Please Enter your Official Number",
                            controllerValue: searchVM.patientOfficialNumberController.value,
                          icon: Icons.search_outlined,
                          hintText: "Patient Official Number"),

                    ],)),

              SizedBox(
                height: 30,
              ),

            ],
          ),
        ),


      ),
    );
  }
}





