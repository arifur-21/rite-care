import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/model/lab_test_model/status_model.dart';
import 'package:ritecare_hms/repository/repository.dart';

import '../../data/response/status.dart';
import '../../model/lab_test_model/lab_test_list_model.dart';
import '../../model/lab_test_model/simple_list_models.dart';
import '../../model/lab_test_model/summery_model0/summery_model0.dart';
import '../../model/lab_test_model/summery_sub_item_model/lab_test_name_sugg_model.dart';
import '../../model/lab_test_model/summery_sub_item_model/table_row_design_model.dart';

import '../../model/register/number_check_model.dart';
import '../../repository/search_repository/SearchRepository.dart';
import '../../shere_preference/login_preference.dart';

import '../../utils/utils.dart';
import '../login_view_model/logged_in_user_model.dart';

class SummeryDetailsViewModel extends GetxController{
  final _api = SearchRepository();
  final _repository = Repository();
  LoginPreference loginPreference = LoginPreference();
  var token;
  dynamic list = [];
  dynamic startDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;
  dynamic endDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;

  final sampleIdController = TextEditingController().obs;
  final invoNumController = TextEditingController().obs;

  final textController = TextEditingController().obs;

  dynamic resultData;

  final rxRequestStatus = Status.LOADING.obs;
  final summeryListItem = SummeryModel().obs;
  final tableRowDesignListItem = TableRowDesignModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;

  void setTableRowDesign(TableRowDesignModel _value) => tableRowDesignListItem.value = _value;

  void setError(String _value) => error.value = _value;



  /// get table row design item
   Future<TableRowDesignModel> getTableRowDesignItem(serviceId, itemId, groupItemId) async {
     print('call table row design vm ');
    setRxRequestStatus(Status.LOADING);
    await _api.getTableRowDesignItem(serviceId, itemId,groupItemId).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setTableRowDesign(value);

    //  return value;
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error ${error.toString()}");
    });
    return tableRowDesignListItem.value;
  }

  /// get table row design item
  Future<TableRowDesignModel> getTableKeyPairItem(serviceId, groupItemId) async {
    print('call table row design vm ');
    setRxRequestStatus(Status.LOADING);
    await _api.getTableKeyPairItem(serviceId, groupItemId).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setTableRowDesign(value);

      //  return value;
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error ${error.toString()}");
    });
    return tableRowDesignListItem.value;
  }


  /// operation Schedule status
  Future<void> saveEditLabReportResult({dynamic result, dynamic id}) async {

    await _repository.saveEditLabReportResult(result).then((value) {
      print("------------------------vm show result-------------------");
      print(value);
      Utils.snakBar("status", 'status update successfull');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }



}
