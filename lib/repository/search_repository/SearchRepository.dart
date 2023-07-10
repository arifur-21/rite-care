
import 'package:ritecare_hms/model/search_model/SearchModel.dart';

import '../../data/network/network_api_services.dart';
import '../../model/lab_test_model/simple_list_models.dart';
import '../../model/lab_test_model/summery_model0/summery_model0.dart';
import '../../model/lab_test_model/summery_sub_item_model/table_row_design_model.dart';
import '../../model/patinet_list_model/patient_list_model.dart';
import '../../model/user_profile_model/user_profile_model.dart';
import '../../view_model/login_view_model/logged_in_user_model.dart';

class SearchRepository {
  final _apiServices = NetworkApiServices();
  List<SearchModel> getPatientCellNoApi = [];
  List<SearchModel> response = [];

  Future<SearchModel> getSearch(String id) async {
    dynamic response = await _apiServices.getPatientById(id);
    return SearchModel.fromJson(response);
  }

  /// get object data
  /// get logged in user data
  Future<LoggedInUserModel> getLoggedInUserData() async {
    dynamic response = await _apiServices.getApiData('/Login/GetLoggedinUser');
    return LoggedInUserModel.fromJson(response);
  }

  /// get user profile
  Future<UserProfileModel> getUserProfile() async {
    dynamic response = await _apiServices.getApiData('/Login/GetLoggedinUser');
    return UserProfileModel.fromJson(response);
  }

  //get sample list data
  Future<SummeryModel> getSampleListData(
      startDate, endDate, statusId, page, serviceId, labTestName, invoiceNum ) async {
    print("------------------> date <----------------------");
    print(statusId);
    print(startDate);
    print(endDate);
    print("test sample  sugges ");
    dynamic response = await _apiServices.getApiData(
        '/Item/GetInvoiceSampleIDByMedicalType?id=0&statusid=$statusId&medicalTypeID=62&DateStart=$startDate&DateEnd=$endDate&pageNumber=$page&pageSize=25&invoiceId=$invoiceNum&sampleId=$labTestName');
    return SummeryModel.fromJson(response);
  }

  //get summery list data
  Future<SummeryModel> getSummeryListData(
      startDate, endDate, statusId, page, serviceId, itemId, invoiceNum) async {
    dynamic response = await _apiServices.getApiData(
        '/Item/GetPatientInvoicebyMedicalType?id=$serviceId&statusId=$statusId&medicalTypeID=62&DateStart=${startDate}&DateEnd=${endDate}&pageNumber=$page&pageSize=20&invoiceId=$invoiceNum&sampleId=&itemId=$itemId');
    return SummeryModel.fromJson(response);
  }

  //get table row design item
  Future<TableRowDesignModel> getTableRowDesignItem(
      serviceId, itemId, groupItemId) async {
    print("repo item Id ${itemId}");
    print("repo service Id ${serviceId}");
    dynamic response = await _apiServices.getApiData(
        '/Item/GetTableRowDesignByItemId?itemId=$itemId&machineId=&groupItemId=$groupItemId&serviceId=$serviceId');
    return TableRowDesignModel.fromJson(response);
  }

  /// get patient list
  Future<PatientListModel> getPatientList(
      startDate, endDate, statusId, unitId, page) async {
    print("------------------> start data end date --------------------->");
    print(startDate);
    print(endDate);
    print("unit id $unitId");

    print("status id $statusId");
    dynamic response = await _apiServices.getApiData(
        "/Patient/GetPatientList?pageNumber=$page&pageSize=25&startDate=$startDate&endDate=$endDate&unitId=$unitId&bloodGroupId=$statusId");
    return PatientListModel.fromJson(response);
  }

  List<SearchModel> searchData = [];
  Future<List<SearchModel>> getPatientByOccicialNo(String id) async {
    dynamic response = await _apiServices.getListOfApiData(
        '/Patient/GetPatientByServiceId?serviceNumber=$id&oldData=false');

    searchData.clear();
    for (Map i in response) {
      SearchModel data = SearchModel.fromJson(i);
      searchData.add(data);
    }
    return searchData;
  }

  List<SearchModel> searchDataOfficial = [];
  Future<List<SearchModel>> getPateintByCellNO(String id) async {
    dynamic response = await _apiServices
        .getListOfApiData('/Patient/GetPatientByPhone?phoneNumber=$id');
    searchDataOfficial.clear();
    for (Map i in response) {
      SearchModel data = SearchModel.fromJson(i);
      searchDataOfficial.add(data);
    }
    return searchDataOfficial;
  }

  List<SearchModel> searchDataByName = [];
  Future<List<SearchModel>> getPateintByName(String id) async {
    dynamic response = await _apiServices.getListOfApiData(
        '/Patient/SearchPatientByPartialName?name=$id&partialFullSearch=true');
    searchDataByName.clear();
    for (Map i in response) {
      SearchModel data = SearchModel.fromJson(i);
      searchDataByName.add(data);
    }
    return searchDataByName;
  }
}
