
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/model/lab_test_model/status_model.dart';
import 'package:ritecare_hms/model/login_model/login_token_model.dart';
import 'package:ritecare_hms/repository/repository.dart';
import 'package:ritecare_hms/resources/app_url/app_url.dart';

import '../../../data/response/status.dart';
import '../../../model/lab_test_model/summery_sub_item_model/lab_test_name_sugg_model.dart';
import '../../../repository/search_repository/SearchRepository.dart';


class LabTestNameQuerySuggViewModel extends GetxController{

  final _repository = Repository();

  dynamic startDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;
  dynamic endDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;

  final sampleIdController = TextEditingController().obs;


  final textController = TextEditingController().obs;

  final rxRequestStatus = Status.LOADING.obs;
  final summeryListFilterStatus = <StatusListModel>[].obs;
  final labTestNameSuggList = <LabTestNameSuggModel>[].obs;
  RxString error = ''.obs;



  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setSummeryListFilterStatus(List<StatusListModel> _value) => summeryListFilterStatus.value = _value;
  void setLabTestNameSugg(List<LabTestNameSuggModel> _value) => labTestNameSuggList.value = _value;
  void setError(String _value) => error.value = _value;



  //get rank data
  Future<List<LabTestNameSuggModel>> getSummeryLabTestNameSuggData({String? query})async {
    print("sdf");
    // setRxRequestStatus(Status.LOADING);
    await _repository.getLabTestNameSuggData(query!).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setLabTestNameSugg(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error  ${error.toString()}");
    });

    return labTestNameSuggList;
  }




  //get sample and summery list filter status
  Future<List<StatusListModel>> getSummeryListFilterStatus()async{
    // setRxRequestStatus(Status.LOADING);
    await  _repository.getSampleListFilterStatusData().then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setSummeryListFilterStatus(value);
    }).onError((error, stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
    });
    return summeryListFilterStatus;
  }







}