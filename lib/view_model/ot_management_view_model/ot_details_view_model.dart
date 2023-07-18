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


 /* /// get ot schedule
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
  }*/

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

  /*/// operation Schedule status
  void operationScheduleStatus({
    dynamic statusId,
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
    required dynamic index,
    required OtScheduleModel otScheduleModel
  }) async {

    dynamic postData = otData[index];
    *//* print("otvm ${otData![index].surgeryStatusId}");
   print("index $index");

   print("ot date ${otData![index].surgeryScheduleDate}");
   print("note id ${otData![index].id}");
*//*

    print("status id11${statusId}");
    postData.surgeryStatusId = statusId;
    postData.surgeryScheduleDate = startDate;
    postData.id = noteId;

    Map data1 = {
      "surgery": {}
    };
    data1['surgery'] = jsonEncode(postData);

    print("data $data1");

    Map data = {
      "surgery": {
        "Id": noteId,
        "SurgeryTypeId": otScheduleModel.items![index].surgeryTypeId.toString(),
        "PatientId": otScheduleModel.items![index].patientId,
        "SurgeryItemId": otScheduleModel.items![index].surgeryItemId,
        "SurgeryStatusId": statusId,
        "UserId": otScheduleModel.items![index].userId,
        "Active": otScheduleModel.items![index].active,
        "BranchId": otScheduleModel.items![index].branchId,
        "TenantId": otScheduleModel.items![index].tenantId,
        "RoomId": otScheduleModel.items![index].roomId,
        "SurgeryScheduleDate": startDate.toString(),
        "StartTime": "00:00:00",
        "EndTime": "00:00:00",
        "InstrumentReceived": false,
        "InstrumentRefund": false,
        "Archived": false,
        "Disease": otScheduleModel.items![index].disease,
        "ANS": otScheduleModel.items![index].aNS,
        "ASA": otScheduleModel.items![index].aSA,
        "Ward": otScheduleModel.items![index].ward,
        "IsApproved": false,
        "ApprovedUserId": 0,
        "SurgeryServiceProviderMaps": null,
        "SurgeryType": {
          "Id": otScheduleModel.items![index].surgeryType?.id,
          "Name": otScheduleModel.items![index].surgeryType?.name,
          "Description": null,
          "UserId": otScheduleModel.items![index].surgeryType?.userId,
          "Active": true,
          "TenantId": 25
        },
        "SurgeryStatus": {
          "Id": otScheduleModel.items![index].surgeryStatus?.id,
          "Name": otScheduleModel.items![index].surgeryStatus?.name,
          "UserId": otScheduleModel.items![index].surgeryStatus?.userId,
          "Active": true,
          "SurgeryDetails": null
        },
        "OperationRoom": {
          "Id": 50338,
          "RoomNumber": "05",
          "RoomName": "Operation Theater",
          "SurgeryTypeId": 42,
          "InchargeId": 50648,
          "NoOfBed": 1,
          "UserId": 30515,
          "Active": true,
          "BranchId": 33,
          "Branch": null,
          "TenantId": 25,
          "SurgeryType": {
            "Id": 42,
            "Name": "URO",
            "Description": null,
            "UserId": 30515,
            "Active": true,
            "TenantId": 25
          },
          "User": {
            "Id": 50648,
            "ContactId": 132436,
            "UserName": "alamin370697@gmail.com",
            "Contact": {
              "Id": 132436,
              "Active": true,
              "UserId": 30490,
              "TenantId": 25,
              "FirstName": "Al",
              "LastName": "Amin",
              "PhoneNumber": "01769101518",
              "GenderId": 1,
              "Street": "",
              "City": "",
              "Zip": "",
              "Country": "BD",
              "Email": "alamin370697@gmail.com",
              "Fax": "",
              "WebSite": "null",
              "Photo": "null",
              "IsCompany": null
            }
          },
          "PostOperativeRooms": [
            {
              "Id": 54028,
              "OperationRoomId": 50338,
              "BedNo": 1,
              "Occupency": false,
              "UserId": 30515,
              "Active": true,
              "PatientId": null,
              "OperationRoom": null,
              "PostOperativePatientHistories": []
            }
          ]
        },
        "Patient": {
          "Id": otScheduleModel.items![index].patient?.id,
          "OldId": null,
          "FirstName": otScheduleModel.items![index].patient?.firstName,
          "LastName": "",
          "PhoneNumber": otScheduleModel.items![index].patient?.id,
          "GenderId": 1,
          "BloodGroup": null,
          "BloodGroupId": null,
          "FatherName": null,
          "DOB": "2023-07-12T00:00:00",
          "NationalId": "",
          "Occupation": null,
          "Street": "",
          "City": "",
          "Zip": "",
          "Country": "BD",
          "Email": "",
          "Photo": null,
          "EmergencyNumber": "",
          "EmergencyContactName": "",
          "EmergencyContactRelation": "",
          "CreatedDate": "2023-04-13T16:40:42.617",
          "ServiceId": "7777898",
          "RelationshipId": null,
          "RankId": 0,
          "TradeId": null,
          "ServiceTypeId": 0,
          "RankTypeId": null,
          "UnitName": "37 ST BN",
          "RankName": "null",
          "TradeName": null,
          "UnitId": 0,
          "IsRetired": false,
          "PatientPrefixId": 0,
          "PatientStatusId": null,
          "Sex": null,
          "OldDob": null,
          "Relationship": null,
          "Rank": null,
          "Unit": null,
          "Trade": null
        },
        "Item": {
          "Name": otScheduleModel.items![index].item?.name,
          "GenericName": null,
          "Code": "OH-01",
          "ItemTypeId": 32,
          "MedicalTypeId": 63,
          "ItemCategoryId": 80847,
          "MeasurementUnitId": null,
          "SalePrice": 10000,
          "BuyPrice": 0,
          "ServiceProviderId": null,
          "ReferralAllowed": false,
          "Description": null,
          "DefaultReferrarFee": 0,
          "LabReportGroupId": null,
          "ItemType": null,
          "ItemCategory": {
            "Name": "General",
            "MedicalTypeId": 63,
            "ReferralCommission": null,
            "IsPathology": false,
            "SampleId": 0,
            "Items": [],
            "ItemSubCategories": [],
            "MedicalType": null,
            "TenantId": 25,
            "Tenant": null,
            "Id": 80847,
            "Active": true,
            "UserId": 30515,
            "HasErrors": false,
            "ErrorCount": 0,
            "NoErrors": true
          },
          "MeasurementUnit": null,
          "MedicalType": null,
          "Inventory": null,
          "Id": 321154,
          "Active": true,
          "UserId": 30490,
          "HasErrors": false,
          "ErrorCount": 0,
          "NoErrors": true
        },
        "SurgeryNotes": ""
      }
    };

    await _api.postOperationScheduleStatus(data).then((value) {
    //  getSchedule();
      Utils.snakBar("status", 'note surgery successfully');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }*/

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
