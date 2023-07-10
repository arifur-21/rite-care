
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

class ShortFormRegisterViewModel extends GetxController{


  final _api = Repository();
  LoginPreference loginPreference = LoginPreference();
  var token;

  final  short_officalNOController = TextEditingController().obs;
  final  short_firstNameController = TextEditingController().obs;
  final  short_phoneNumberController = TextEditingController().obs;
  final  short_zipCodeController = TextEditingController().obs;
  final  short_rankController = TextEditingController().obs;
  final  short_uniController = TextEditingController().obs;
  final  short_emailController = TextEditingController().obs;

  final  short_lastNameController = TextEditingController().obs;
  final  short_patientOldIdController = TextEditingController().obs;
  final  short_nationalIdController = TextEditingController().obs;
  final  short_emergencyContactNumberController = TextEditingController().obs;
  final  short_emergencyNameContactController = TextEditingController().obs;
  final  short_emergencyContactRelationController = TextEditingController().obs;
  final  short_streetController = TextEditingController().obs;
  final  short_cityController = TextEditingController().obs;

  final rxRequestStatus = Status.LOADING.obs;
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
  void setError(String _value) => error.value = _value;





  //registration short form
  void registerPatient({
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
  }){
    print("unit ${statusId}");
    print("rank ${rankName}");
    print("rank ${rankListItem}");

    Map data = {
      "FirstName": short_firstNameController.value.text,
      "PhoneNumber": short_phoneNumberController.value.text,
      "GenderId": genderId,
      "BloodGroup": null,
      "BloodGroupId": bloodId,
      "DOB": dateOfBrith.toString(),
      "Email": short_emailController.value.text,
      "Photo": null,
      "CreatedDate": dateOfBrith.toString(),
      "ServiceId": short_officalNOController.value.text,
      "RelationshipId": relationId,
      "RankId": rankId,
      "TradeId": null,
      "UnitName": unitName.toString(),
      "RankName": rankName.toString(),
      "TradeName": null,
      "UnitId": unitId,
      "IsRetired": isRetired,
      "PatientPrefixId": prefixId,
      "PatientStatusId": statusId,
    };

    _api.registerPatient(data).then((value){
      if(value == "PatientExist") {
        Utils.snakBar("Registration", 'Already Exist.');
      }
      print(value);
      if(value['Id'] > 0) {
        Utils.snakBar("Registration", 'Registration successfully');
      }
      print("short form register ${value}");

    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });

  }

}