import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:ritecare_hms/model/ot_management_model/ot_list_model.dart';
import 'package:ritecare_hms/model/ot_management_model/surgery_note_model.dart';

import '../../data/response/status.dart';
import '../../model/ot_management_model/ot_schedule_model0/surgery.dart';
import '../../repository/repository.dart';

import '../../utils/utils.dart';

class OtListViewModel extends GetxController {
  final _api = Repository();

  final surgeryNoteController = TextEditingController().obs;

  RxString base_url = ''.obs;

  dynamic otData;

  final rxRequestStatus = Status.LOADING.obs;
  final otScheduleList = OtScheduleModel().obs;
  RxString error = ''.obs;
  SurgeryNoteModel surgeryNoteModel = SurgeryNoteModel();

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setOtSchedule(OtScheduleModel _value) => otScheduleList.value = _value;
  void setError(String _value) => error.value = _value;

  dynamic startDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;
  dynamic endDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;
  dynamic id;

  /// get ot schedule
  Future<dynamic> getSchedule() async {
    setRxRequestStatus(Status.LOADING);
    await _api.getOtSchedule(startDate, endDate).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      otData = value.items;
      setOtSchedule(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error getSchedule ${error.toString()}");
    });
  }



  /// operation Schedule status
  void operationScheduleStatus(
      {dynamic statusId,
        dynamic noteId,
        dynamic userId,
        dynamic surgeryTypeId,
        dynamic roomId,
        dynamic surgeryType_id1,
        dynamic surgeryType_name1,
        dynamic disease,
        dynamic asa,
        dynamic ans,
        dynamic ward,
         dynamic index,
        dynamic postPonedId,
         OtScheduleModel? otScheduleModel}) async {
    print("postponed id $statusId");

    Surgery postData = otData[index];

    postData.surgeryStatusId = statusId;
    postData.surgeryScheduleDate = startDate.toString();
    postData.id = noteId;
    postData.surgeryServiceProviderMaps = null;
    postData.endTime = "00:00:00";
    postData.startTime = "00:00:00";


    await _api.postOperationScheduleStatus({
      "surgery": Surgery.fromJson(jsonDecode(jsonEncode(postData)))
    }).then((value) {
      getSchedule();
      Utils.snakBar("status", 'Status Change successfull');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }

}
