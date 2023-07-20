
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/model/register/service_type_id_model.dart';
import 'package:ritecare_hms/model/search_model/SearchModel.dart';
import 'package:ritecare_hms/resources/app_url/app_url.dart';

import '../../data/response/status.dart';
import '../../model/register/blood_group_model/BloodGroupModel.dart';
import '../../model/register/gender_model.dart';
import '../../model/register/number_check_model.dart';
import '../../model/register/rank_model.dart';
import '../../repository/repository.dart';
import '../../shere_preference/login_preference.dart';
import '../../utils/utils.dart';
import 'package:http/http.dart' as http;

class PatientUpdateViewModel extends GetxController{


  final _api = Repository();
  LoginPreference loginPreference = LoginPreference();
  var token;
/*
  final  update_officalNOController = TextEditingController().obs;
  final  update_firstNameController = TextEditingController().obs;
  final  update_phoneNumberController = TextEditingController().obs;
  final  update_zipCodeController = TextEditingController().obs;
  final  update_rankController = TextEditingController().obs;
  final  update_uniController = TextEditingController().obs;
  final  update_emailController = TextEditingController().obs;

  final  update_lastNameController = TextEditingController().obs;
  final  update_patientOldIdController = TextEditingController().obs;
  final  update_nationalIdController = TextEditingController().obs;
  final  update_emergencyContactNumberController = TextEditingController().obs;
  final  update_emergencyNameContactController = TextEditingController().obs;
  final  update_emergencyContactRelationController = TextEditingController().obs;
  final  update_streetController = TextEditingController().obs;
  final  update_cityController = TextEditingController().obs;*/

 /* final rxRequestStatus = Status.LOADING.obs;
  final rxRequestStatus1 = Status1.SUCCESS.obs;
  RxString error = ''.obs;
  final rankListItem = <RankModel>[].obs;
  final unitListItem = <RankModel>[].obs;
  final numberCehckList = <NumberCheckModel>[].obs;
  dynamic serviceId = ''.obs;

  dynamic serviceTypeIdList = ServiceTypeIdModel().obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setRxRequestStatus1(Status1 _value) => rxRequestStatus1.value = _value;
  void setServiceTypeId(ServiceTypeIdModel _value) => serviceTypeIdList.value = _value;
  void setRankList(List<RankModel> _value) => rankListItem.value = _value;
  void setUnitList(List<RankModel> _value) => unitListItem.value = _value;
  void setNumberCheckData(List<NumberCheckModel> _value) => numberCehckList.value = _value;
  void setError(String _value) => error.value = _value;*/


  final officalNOController = TextEditingController().obs;
  final firstNameController = TextEditingController().obs;
  final phoneNumberController = TextEditingController().obs;
  final zipCodeController = TextEditingController().obs;
  final rankController = TextEditingController().obs;
  final uniController = TextEditingController().obs;
  final emailController = TextEditingController().obs;

  final lastNameController = TextEditingController().obs;
  final patientOldIdController = TextEditingController().obs;
  final nationalIdController = TextEditingController().obs;
  final emergencyContactNumberController = TextEditingController().obs;
  final emergencyNameContactController = TextEditingController().obs;
  final emergencyContactRelationController = TextEditingController().obs;
  final streetController = TextEditingController().obs;
  final cityController = TextEditingController().obs;



  void patientRegistrationUpdate({
    dynamic serviceId,
    dynamic genderId,
    dynamic bloodId,
    dynamic imageUrl,
    dynamic  dateOfBrith,
    dynamic isRetired,
    dynamic prefixId,
    dynamic statusId,
    dynamic relationId,
    dynamic rankId,
    dynamic unitId,
    dynamic patientPrefixName,
    dynamic patientStatusName,
    dynamic patientRelationName,
    dynamic bloodGroupName,
    dynamic genderName,
    dynamic rankName,
    dynamic unitName,
    dynamic serviceTypeId,
    dynamic serviceType,
  }
      ){

    print("+++++++++++++++++id ++++++");
    print(unitId);
    print(relationId);
    print("pre $prefixId");
    print("blood group id $serviceTypeId");
    print("blood group  $dateOfBrith");


    Map data = {
     // "OldId": 899,
      "FirstName": firstNameController.value.text,
      "LastName": lastNameController.value.text,
      "PhoneNumber": phoneNumberController.value.text,
      "GenderId":  genderId,
      "BloodGroupId": bloodId,
      "BloodGroup": bloodGroupName.toString() ,
      "DOB": dateOfBrith,
      "NationalId": nationalIdController.value.text,
      "Street": streetController.value.text,
      "City": cityController.value.text,
      "Email": emailController.value.text,
      "Photo": null,
      "EmergencyNumber": emergencyNameContactController.value.text,
      "EmergencyContactName": emergencyNameContactController.value.text,
      "EmergencyContactRelation": emergencyContactRelationController.value.text,
      "CreatedDate": dateOfBrith,
      "ServiceId": officalNOController.value.text,
      "RelationshipId": relationId,
      "RankId": rankId,
      "UnitName": unitName,
      "RankName": rankName,
      "UnitId": unitId,
      "IsRetired": isRetired,
      "PatientPrefixId": prefixId,
      "PatientStatusId": null,
      "ServiceTypeId": serviceTypeId,
      "Id": serviceId,
    };

    _api.registrationUpdate(data).then((value){

      Utils.snakBar("Update", 'Update Successfull');
      print("value 111 $value");
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });

  }


}