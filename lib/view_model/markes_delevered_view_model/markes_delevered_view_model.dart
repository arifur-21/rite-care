
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

import '../../data/app_exceptions.dart';
import '../../data/response/status.dart';
import '../../model/lab_test_model/lab_test_list_model.dart';

import '../../model/lab_test_model/summery_model0/item.dart';
import '../../model/lab_test_model/summery_model0/summery_model0.dart';
import '../../model/lab_test_model/summery_sub_item_model/lab_test_name_sugg_model.dart';

import '../../model/register/number_check_model.dart';
import '../../model/service_id_model/service_id_model.dart';
import '../../repository/search_repository/SearchRepository.dart';
import '../../shere_preference/login_preference.dart';
import 'package:http/http.dart' as http;

import '../../utils/utils.dart';
import '../login_view_model/logged_in_user_model.dart';

class MarkesDeleveredViewModel extends GetxController{

  final _repository = Repository();

  /// operation Schedule status
  Future<void> postMarkeAsDelevered({dynamic data}) async {

    await _repository.postMarkesDeleveredPostApi(data).then((value) {
      Utils.snakBar("status", 'status update successfull');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }



}