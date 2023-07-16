
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/model/patinet_list_model/patient_list_model.dart';

import '../../data/response/status.dart';
import '../../repository/search_repository/SearchRepository.dart';
import '../../resources/app_url/app_url.dart';
import '../../shere_preference/login_preference.dart';
import 'package:http/http.dart' as http;

class PatientListViewModel{

  final _api = SearchRepository();

  final patientUnitController = TextEditingController().obs;

  final rxRequestStatus = Status.LOADING.obs;
  final patientList = PatientListModel().obs;
  RxString error = ''.obs;
  RxInt totalPatient = 0.obs;
  RxString bloodGroupName = 'Select Blood Group'.obs;


  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setPatientList(PatientListModel _value) => patientList.value = _value;
  void setError(String _value) => error.value = _value;

  dynamic startDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;
  dynamic endDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;

  RxBool hasReachedMax = false.obs;
  RxInt pageNumber = 1.obs;
  RxInt categoryId = 0.obs;
  RxInt unitNameId = 0.obs;


  RxList<Items> items = <Items>[].obs;


/*  /// get patient list view model
  void getPatientList({int? statusId , int? unitId, int? page,startDate, endDate}) async{
    print(page);
    print("pataiten date ${startDate}");
 //   setRxRequestStatus(Status.LOADING);
   await _api.getPatientList(startDate, endDate, statusId, unitId, page).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setPatientList(value);
      print("patient lit${value}");
    }).onError((error, stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error ${error.toString()}");
    });
  }*/


  /// get patient list
  Future<void> getPatientList(
      {int labStatus = 0,
        int page = 1,
        bool isRefreshed = true,
        unitName}) async {
    if (isRefreshed == true) {
      pageNumber.value = 1;
      // categoryId.value = labStatus;
      hasReachedMax.value = false;

      await _api
          .getPatientList(
          startDate, endDate, categoryId.value, unitNameId.value, pageNumber.value)
          .then((value) {
        setRxRequestStatus(Status.SUCCESS);
        setPatientList(value);
        items.value = [];

        items.addAll(value.items ?? []);
        // pageNumber.value++;
        if ((value.items?.length ?? 0) < 20) {
          hasReachedMax.value = true;
          print("==================================== reached Max");
        }
        print("lab test VM ${value.items?.length}");
      }).onError((error, stackTrace) {
        setRxRequestStatus(Status.ERROR);
        setError(error.toString());
        print("viewModel error ${error.toString()}");
      });
    } else {
      if (hasReachedMax.value == false) {
        pageNumber.value++;
        // categoryId.value = labStatus;

        await _api
            .getPatientList(
            startDate, endDate, categoryId.value, unitNameId.value, pageNumber.value)
            .then((value) {
          setRxRequestStatus(Status.SUCCESS);
          setPatientList(value);
          items.addAll(value.items ?? []);
          if (value.items!.length < 20) {
            hasReachedMax.value = true;
            print(
                "==================================== reached Max other than first call");
          }
          print("lab test VM ${value.items?.length}");
        }).onError((error, stackTrace) {
          setRxRequestStatus(Status.ERROR);
          setError(error.toString());
          print("viewModel error ${error.toString()}");
        });
      }
    }
  }


}