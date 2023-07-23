import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/model/lab_test_model/simple_list_models.dart';
import 'package:ritecare_hms/model/ot_management_model/ot_list_model.dart';
import 'package:ritecare_hms/model/ot_management_model/surgery_note_model.dart';
import 'package:web_socket_channel/io.dart';

import '../../data/response/status.dart';
import '../../model/ot_management_model/saveOperationSchduleModel.dart';
import '../../repository/repository.dart';

import 'package:http/http.dart' as http;

import '../../utils/utils.dart';

class OtDetailsVewModel extends GetxController {
  final _api = Repository();

  final surgeryNoteController = TextEditingController().obs;


  dynamic otData;


  final rxRequestStatus = Status.LOADING.obs;
  final otScheduleList = OtScheduleModel().obs;
  final surgeryNoteItem = <SurgeryNoteModel>[].obs;
  RxString error = ''.obs;
  SurgeryNoteModel surgeryNoteModel = SurgeryNoteModel();

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setOtSchedule(OtScheduleModel _value) => otScheduleList.value = _value;
  void setSurgeryNote(List<SurgeryNoteModel> _value) => surgeryNoteItem.value = _value;
  void setError(String _value) => error.value = _value;

  dynamic startDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;
  dynamic endDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;
  dynamic id;


  //get surgery not data
  Future<List<SurgeryNoteModel>> getSurgerNoteData() async {
    setRxRequestStatus(Status.LOADING);
    await _api.getSurgeryNote(id).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setSurgeryNote(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("vm error get surgery note ${error.toString()}");
    });

    return surgeryNoteItem;
  }

  //surgery note post
  void surgeryNotePost(dynamic noteId, dynamic id, dynamic userId) async {
    print("vm noteId ${noteId}");
    print("noteid1 ${noteId}");
    print("id1 ${id}");
    print("userid1 ${userId}");
    Map data = {
      // "UserId": 30515,
      "Active": true,
      //"Id": 20434,
      "Note": surgeryNoteController.value.text,
      "SurgeryId": noteId
    };
    await _api.postSurgeryNote(data).then((value) {
      print("noteid ${noteId}");
      print("id ${id}");
      print("userid ${userId}");
      print("value note11 ${value}");
      getSurgerNoteData();
      Utils.snakBar("Note add", 'successfull');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }


  //edit surgery note
  void editSurgeryNote(dynamic noteId, dynamic id) async {
    print("vm edit noteId ${noteId}");
    print("vm  edti noteId ${id}");



    Map data = {
      "Note": surgeryNoteController.value.text,
      "SurgeryId": noteId,
      "Id": id,
    };
    await _api.postSurgeryNote(data).then((value) {
      getSurgerNoteData();
      Utils.snakBar("Update", 'Update successfully');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }

  //delete surgery Note
  void deleteSurgeryNote(dynamic noteId, dynamic id, dynamic userId) async {
    print("vm delete noteId ${noteId}");
    print("vm delete Id ${id}");
    Map data = {
      "UserId": userId,
      "Active": true,
      "Id": id,
      "Note": "Bloodd",
      "SurgeryId": noteId
    };
    await _api.surgeryNoteDelete(data).then((value) {
      getSurgerNoteData();
      Utils.snakBar("Delete", 'Delete successfully');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }
}
