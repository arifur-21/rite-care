import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:ritecare_hms/resources/app_url/app_url.dart';

import '../data/network/network_api_services.dart';
import '../model/lab_test_model/lab_test_list_model.dart';
import '../model/lab_test_model/lab_test_list_status_model.dart';
import '../model/lab_test_model/simple_list_models.dart';
import '../model/lab_test_model/status_model.dart';
import '../model/lab_test_model/summery_sub_item_model/lab_test_name_sugg_model.dart';
import '../model/ot_management_model/ot_list_model.dart';
import '../model/ot_management_model/surgery_note_model.dart';
import '../model/register/blood_group_model/BloodGroupModel.dart';
import '../model/register/gender_model.dart';
import '../model/register/number_check_model.dart';
import '../model/register/rank_model.dart';
import '../model/register/service_type_id_model.dart';
import '../shere_preference/login_preference.dart';
import '../view_model/login_view_model/logged_in_user_model.dart';

class Repository{

  LoginPreference loginPreference = LoginPreference();
  final _apiServices = NetworkApiServices();

  dynamic base_url;







  ////////////////// post api start ////////////



  Future<dynamic> loginApi(var data)async{

    dynamic response = await _apiServices.postLoginApi(data, '/auth/token');
    print(" repo uri base ${base_url}");

    return response;
  }

  Future<dynamic> forgotPassword(dynamic data)async{
    dynamic response = await _apiServices.postLoginApi(data, '/Login/SendForgotPasswordURL');
    return response;

  }


  Future<dynamic> registerPatient(dynamic data)async{
    print("test register");
    dynamic response = await _apiServices.postApiData(data, '/Patient/CreatePatient');
    return response;
  }
  Future<dynamic> registrationUpdate(data)async{
    print("repo update register data $data");
    dynamic response = await _apiServices.postApiData(data, '/Patient/UpdatePatient');
    return response;
  }


  Future<dynamic> postLabReportResult(data)async{
    dynamic response = await _apiServices.postApiData(data, '/Item/SaveEditLabReportResult');
    return response;
  }

  /// post surgery note
  Future<dynamic> postSurgeryNote(var data)async{
    print("note $data");
    dynamic response = await _apiServices.postApiData(data, '/OT/SaveSurgeryNote');
    return response;
  }

  /// post operation schedule status
  Future<dynamic> postOperationScheduleStatus(dynamic data)async{
    print("post ot repo ${data}");
    dynamic response = await _apiServices.postApiData(data, '/OT/SaveOperationSchedule');
    return response;
  }

  /// edit surgery note
  Future<dynamic> editSurgeryNote(var data)async{
    dynamic response = await _apiServices.postApiData(data, '/OT/SaveSurgeryNote');
    return response;
  }

  ///  surgery note delete
  Future<dynamic> surgeryNoteDelete(data)async{
    dynamic response = await _apiServices.postApiData(data, '/OT/DeleteSurgeryNote');
    return response;
  }

  ///  approved post api
  Future<dynamic> postApprovedApiData(data)async{
    dynamic response = await _apiServices.postApiData(data, '/Billing/UpdatePatientServiceSignIn');
    return response;
  }

  /// post markes delevered data api
  Future<dynamic> postMarkesDeleveredPostApi(data)async{
    dynamic response = await _apiServices.postApiData(data, '/Item/UpdateLabItem');
    return response;
  }

  ///  post marke as printed
  Future<dynamic> postMarkeAsPientedData(data)async{
    dynamic response = await _apiServices.postApiData(data, '/Item/UpdatePatientServiceMarkAsPrint');
    return response;
  }


  ///  sav eEdit Lab Report Result
  Future<dynamic> saveEditLabReportResult(data) async {
    print("=======================body data=======================");
    log("===================");
    debugPrintSynchronously("repo report result ${jsonEncode(data)}");
    dynamic response =
    await _apiServices.postApiData(data, '/Item/SaveEditLabReportResult');
    return response;
  }



  ///  UpdatePatientServiceMarkAsPrint
  Future<dynamic> updatePatientServiceMarkAsPrintStatus(data)async{
    dynamic response = await _apiServices.postApiData(data, '/Item/UpdatePatientServiceMarkAsPrint');
    return response;
  }

  // post api  end //

  //////get object list data start /////////


  Future<ServiceTypeIdModel> getServiceTypeId(dynamic id)async{
    dynamic response = await _apiServices.getApiData("/Patient/GetParentPatientByServiceId?serviceNumber=$id");
    return ServiceTypeIdModel.fromJson(response);
  }

  //phone number cross check
  List<NumberCheckModel> numberCheckList = [];
  Future<List<NumberCheckModel>> getNumberCheckData(dynamic number)async{
    print("repo number $number");
    dynamic response = await _apiServices.getListOfApiData('/Patient/GetPatientByPhone?phoneNumber=$number');
    numberCheckList.clear();
    for(Map i in response){
      NumberCheckModel data =  NumberCheckModel.fromJson(i);

      numberCheckList.add(data);
    }
    return numberCheckList;
  }


  /// get ot schdule
  Future<OtScheduleModel> getOtSchedule(dynamic startDate, dynamic endDate)async{
    dynamic response = await _apiServices.getApiData("/OT/GetOperationScheduleList?pageNumber=1&pageSize=150&startDate=${startDate}&endDate=${endDate}&patientId=0&isMobileApp=true");
    return OtScheduleModel.fromJson(response);
  }


  //get lab test list data
  Future<LabTestListModel> getLabTestListApi(dynamic labStatus, dynamic page, suggNameItemId)async{
    print("page reo ${page}");
    print("labtest status id reo  ${labStatus}");
    final response = await _apiServices.getApiData('/Item/GetLabItemsByMedicalType?medicalTypeID=62&pageNumber=$page&pageSize=25&categoryId=$labStatus&searchTerm=&allData=undefined&ItemId=$suggNameItemId&isLabItemSerialNo=false');
    print("repo response ${response}");
    return LabTestListModel.fromJson(response);
  }


  //get object list data end //


  ////////// get list of data start ///////////////




  //get surgery note data
  List<SurgeryNoteModel> getSurgeryNoteData = [];
  Future<List<SurgeryNoteModel>> getSurgeryNote(dynamic id)async{
    dynamic response = await _apiServices.getListOfApiData('/OT/GetSurgeryNotes?surgeryId=${id}');
    getSurgeryNoteData.clear();
    for(Map i in response){
      SurgeryNoteModel data =  SurgeryNoteModel.fromJson(i);
      getSurgeryNoteData.add(data);
    }
    return getSurgeryNoteData;
  }

  //get sample list filter status
  List<StatusListModel> getSampleStatus = [];
  Future<List<StatusListModel>> getSampleListFilterStatusData()async{
    dynamic response = await _apiServices.getListOfApiData("/Item/GetAllLabStatus");
    getSampleStatus.clear();
    for(Map i in response){
      StatusListModel data =  StatusListModel.fromJson(i);
      getSampleStatus.add(data);
    }
    return getSampleStatus;
  }

  //get lab test list filter status
  List<LabTestListStatusModel> getLabTestStatus = [];
  Future<List<LabTestListStatusModel>> getLabTestListFilterStatusData()async{
    dynamic response = await _apiServices.getListOfApiData("/Item/loadLabTestCategories?medicalTypeID=62");
    getLabTestStatus.clear();
    for(Map i in response){
      LabTestListStatusModel data =  LabTestListStatusModel.fromJson(i);
      getLabTestStatus.add(data);
    }
    return getLabTestStatus;
  }


  /// get status lab test name suggestion data
  List<LabTestNameSuggModel> labtTestNameSuggList =[];
  Future<List<LabTestNameSuggModel>> getLabTestNameSuggData(String query)async{
    dynamic response = await _apiServices.getListOfApiData('/Patient/GetItembyMedicalPartialName?id=62&name=$query&partialFullSearch=true&categoryId=0');
    labtTestNameSuggList.clear();
    for(Map i in response){
      LabTestNameSuggModel data =  LabTestNameSuggModel.fromJson(i);
      labtTestNameSuggList.add(data);
    }
    return labtTestNameSuggList;
  }



  /// register rank
  List<RankModel> rankList =[];
  Future<List<RankModel>> getRankListData()async{
    dynamic response = await _apiServices.getListOfApiData('/Patient/GetAllRankList?search=');
    rankList.clear();
    for(Map i in response){
      RankModel data =  RankModel.fromJson(i);
      rankList.add(data);
    }
    return rankList;
  }

  /// register unit
  List<RankModel> unitList =[];
  Future<List<RankModel>> getUnitListData(String query)async{
    print("query ${query}");
    dynamic response = await _apiServices.getListOfApiData('/Patient/GetAllUnitList?search=$query'
        '');
    unitList.clear();
    for(Map i in response){
      RankModel data =  RankModel.fromJson(i);
      unitList.add(data);
    }
    return unitList;
  }




////////// get list of data end ///////////////

}