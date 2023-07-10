
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
  final  update_cityController = TextEditingController().obs;

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
  }
      ){

    print(unitId);
    print(rankId);
    print(serviceId);

    Map data = {
     // "OldId": 899,
      "FirstName": update_firstNameController.value.text,
      "LastName": update_lastNameController.value.text,
      "PhoneNumber": update_phoneNumberController.value.text,
      "GenderId":  genderId,
      "BloodGroup": "A (-ve)",
      "BloodGroupId": bloodId,
      "FatherName": null,
      "DOB": dateOfBrith.toString(),
      "NationalId": update_nationalIdController.value.text,
      "Street": update_streetController.value.text,
      "City": update_cityController.value.text,
      "Country": "BD",
      "Email": update_emailController.value.text,
      "Photo": null,
      "EmergencyNumber": update_emergencyNameContactController.value.text,
      "EmergencyContactName": update_emergencyNameContactController.value.text,
      "EmergencyContactRelation": update_emergencyContactRelationController.value.text,
      "CreatedDate": dateOfBrith.toString(),
      "ServiceId": update_officalNOController.value.text,
      "RelationshipId": relationId,
      "RankId": 0,
      "TradeId": null,
     // "ServiceTypeId": 0,
      "RankTypeId": null,
      "UnitName": unitName,
      "RankName": rankName,
      "TradeName": null,
      "UnitId": 0,
      "IsRetired": isRetired,
      "PatientPrefixId": prefixId,
      "PatientStatusId": statusId,
      "OldDob": null,
      "TenantId": 25,
      "Id": serviceId,
    };

    _api.registrationUpdate(data).then((value){

      Utils.snakBar("Update", 'Update Successfull');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });

  }


}