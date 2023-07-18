
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ritecare_hms/model/register/rank_model.dart';
import 'package:ritecare_hms/model/search_model/SearchModel.dart';
import 'package:ritecare_hms/repository/search_repository/SearchRepository.dart';

import '../../data/response/status.dart';
import '../../model/register/blood_group_model/BloodGroupModel.dart';
import '../../shere_preference/login_preference.dart';
import 'package:http/http.dart' as http;

class SearchViewModel extends GetxController{

  final _api = SearchRepository();
  LoginPreference loginPreference = LoginPreference();
  var token;


  final rxRequestStatus = Status.LOADING.obs;
  final patientList = SearchModel().obs;
  final patientListItem = <SearchModel>[].obs;



  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setPatientList(SearchModel _value) => patientList.value = _value;
  void setPatient(List<SearchModel> _value) => patientListItem.value = _value;
  void setError(String _value) => error.value = _value;

  final patienidController = TextEditingController().obs;
  final patientCellNoController = TextEditingController().obs;
  final patientNameController = TextEditingController().obs;
  final patientOfficialNumberController = TextEditingController().obs;



  void searchPatient() async{
   await _api.getSearch(patienidController.value.text).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      List<SearchModel> slist = [];
      slist.add(value);
      setPatient(slist);
      print("value${value}");
    }).onError((error, stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error ${error.toString()}");
    });
  }

  Future<List<SearchModel>> searchPatientCellNum()async{
    setRxRequestStatus(Status.LOADING);
     await _api.getPateintByCellNO(patientCellNoController.value.text).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setPatient(value);
    }).onError((error, stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
     print("viewModel error cell ${error.toString()}");
    });

    return patientListItem;
  }

  void searchPatientOfficalNo()async{
     setRxRequestStatus(Status.LOADING);
    await _api.getPatientByOccicialNo(patientOfficialNumberController.value.text).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setPatient(value);
    }).onError((error, stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error cell ${error.toString()}");
    });

  }
  Future<List<SearchModel>> searchPatientByName()async{
    setRxRequestStatus(Status.LOADING);
  await  _api.getPateintByName(patientNameController.value.text).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setPatient(value);
    }).onError((error, stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error Name ${error.toString()}");
    });

    return patientListItem;
  }


}