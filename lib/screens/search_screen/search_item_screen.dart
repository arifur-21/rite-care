import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/local_db/boxes/boxes.dart';
import 'package:ritecare_hms/local_db/search_user_model.dart';
import 'package:ritecare_hms/model/user_profile_model/user_profile_model.dart';
import 'package:ritecare_hms/screens/patient_registration/short_form_register.dart';

import '../../data/response/status.dart';
import '../../model/service_id_model/service_id_model.dart';
import '../../shere_preference/login_preference.dart';
import '../../utils/color_styles.dart';
import '../../view_model/serch_view_mode/SearchViewModel.dart';
import '../../widgets/rounded_button.dart';
import '../patient/patient_info/patien_info_screen.dart';
import 'conponents/search_list_widget.dart';

class SearchItemScreen extends StatefulWidget {
  const SearchItemScreen({Key? key}) : super(key: key);

  @override
  State<SearchItemScreen> createState() => _SearchItemScreenState();
}

class _SearchItemScreenState extends State<SearchItemScreen> {
  LoginPreference loginPreference = LoginPreference();
  final searchVM = Get.put(SearchViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
      ),
      body: Column(
        children: [

          Expanded (
            child: Obx ((){
              switch(searchVM.rxRequestStatus.value){
                case Status.LOADING:
                  return Center(child:  CircularProgressIndicator(),);
                case Status.ERROR:
                  return Center(child: Text(searchVM.error.value.toString()));

                case Status.SUCCESS:
                  if(searchVM.patientListItem.value.isEmpty || searchVM.patientListItem.value == null ){

                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("data not found Please Registration", style: TextStyle(fontSize: 16, color: Colors.red),),
                          SizedBox(height: 10,),
                          RoundedButton(
                              width: Get.width * 0.4,
                              title: "Registration",
                              color: Styles.primaryColor,
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrShortForm()));
                              }),
                        ],
                      ),
                    );
                  }
                  else{
                    return Column(
                      children: [
                        Expanded(
                          child:  ListView.builder(
                              shrinkWrap: true,
                              itemCount: searchVM.patientListItem.value.length,
                              itemBuilder: (context, index){
                                print("item ${searchVM.patientListItem[index].id.toString()}");
                                return InkWell(
                                  onTap: (){
                                    ServiceIdModel serviceIdModel = ServiceIdModel(
                                      setviceId: searchVM.patientListItem[index].id
                                    );

                                    loginPreference.saveServiceId(serviceIdModel);

                                    final data = SearchUserModel(
                                      id:  searchVM.patientListItem[index].id,
                                      cellNo:  searchVM.patientListItem[index].phoneNumber,
                                      name:searchVM.patientListItem[index].firstName,
                                      officalNo: searchVM.patientListItem[index].serviceId,
                                      patientId: searchVM.patientListItem[index].id,
                                      gender: searchVM.patientListItem[index].gender.name,
                                      email: searchVM.patientListItem[index].email,
                                      dob: searchVM.patientListItem[index].dOB,
                                      bloodGroup: searchVM.patientListItem[index].bloodGroup,
                                      mobile: searchVM.patientListItem[index].phoneNumber,
                                      emergencyContact: searchVM.patientListItem[index].emergencyNumber,
                                      emergencyRelation: searchVM.patientListItem[index].emergencyContactRelation,
                                      relationship: searchVM.patientListItem[index].relationship?.name,
                                      rank: searchVM.patientListItem[index].rank?.name,
                                      unit: searchVM.patientListItem[index].unit?.name,
                                      patienStatus: searchVM.patientListItem[index].patientStatus,
                                      patientPrefix: searchVM.patientListItem[index].patientPrefix?.name,
                                      emergencyName: searchVM.patientListItem[index].emergencyContactName,
                                      street: searchVM.patientListItem[index].street,
                                      city: searchVM.patientListItem[index].city,
                                      nationalId: searchVM.patientListItem[index].nationalId,
                                    //  patientOldId: searchVM.patientListItem[index].pat?.name,
                                      lastName: searchVM.patientListItem[index].lastName,

                                    );
                                    final box = Boxes.getData();
                                    box.put("id", data);
                                    data.save();
                                    print("hive ${box.length}");
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PatientInfoScreen()));

                                  },
                                  child: SearchlistWidget(
                                    id: index+1,
                                    name: ' ${searchVM.patientListItem[index]?.firstName.toString()}',
                                    relation: ' ${searchVM.patientListItem[index].relationship?.name}',
                                  ),
                                );
                              }),
                        ),
                      ],
                    );
                  }
              }
            }),
          ),

        ],
      )
    );
  }
}
