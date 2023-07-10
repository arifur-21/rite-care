import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ritecare_hms/model/lab_test_model/summery_model0/summery_model0.dart';

import '../../data/response/status.dart';
import '../../model/lab_test_model/status_model.dart';
import '../../model/lab_test_model/summery_model0/item.dart';
import '../../repository/repository.dart';
import '../../repository/search_repository/SearchRepository.dart';
import '../../shere_preference/login_preference.dart';



class SampleListVeiewModel extends GetxController{
  LoginPreference loginPreference = LoginPreference();
  final _api = SearchRepository();
  final _repository = Repository();
  dynamic startDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;
  dynamic endDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;


  final sampleIdController = TextEditingController().obs;
  final invoNumController = TextEditingController().obs;

  final rxRequestStatus = Status.LOADING.obs;
  RxString error = ''.obs;
  final sampleListItem = SummeryModel().obs;
  RxList<Item> items = <Item>[].obs;
  final sampleListFilterStatus = <StatusListModel>[].obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setError(String _value) => error.value = _value;

  void setSampleList(SummeryModel _value) => sampleListItem.value = _value;
  void setSampleListFilterStatus(List<StatusListModel> _value) => sampleListFilterStatus.value = _value;

  RxBool hasReachedMax = false.obs;
  RxInt pageNumber = 1.obs;
  RxInt categoryId = 0.obs;
  RxInt labTestSuggNameId = 0.obs;
  RxString scannBarCode = ''.obs;
  RxString statusName = 'All'.obs;

  /// get summery list data
  Future<void> getSampleListData(
      {int labStatus = 0,
        int page = 1,
        dynamic labTestSuggNameId = null,
        String invoiceNum = '',
        bool isRefreshed = true,
        }) async {
    // ServiceIdModel? service = await loginPreference.getServiceId();
    print("lab name sugge Id vm121231----- $labTestSuggNameId");
    if (isRefreshed == true) {
      pageNumber.value = 1;
       categoryId.value = labStatus;
      hasReachedMax.value = false;

      await _api
          .getSampleListData(
          startDate, endDate, categoryId.value, pageNumber.value, 0, labTestSuggNameId, invoiceNum)
          .then((value) {
        setRxRequestStatus(Status.SUCCESS);
        setSampleList(value);
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
         categoryId.value = labStatus;

        await _api
            .getSampleListData(
            startDate, endDate, categoryId.value, pageNumber.value, 0,labTestSuggNameId,invoiceNum)
            .then((value) {
          setRxRequestStatus(Status.SUCCESS);
          setSampleList(value);
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




  /*/// get sample list data
  void getSampleListData({ statusId = 0,page ,serviceId })async {
    print("start date vm $startDate");
    print("end date vm $endDate");
    setRxRequestStatus(Status.LOADING);

    await loginPreference.getServiceId().then((value) => {
      serviceId = value.setviceId
    });
    print("service sample  $serviceId");
    await _api.getSampleListData(startDate, endDate, statusId, page, serviceId).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setSampleList(value);
    }).onError((error, stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error ${error.toString()}");
    });
  }*/




  //get sample and summery list filter status
  Future<List<StatusListModel>> getSampleListFilterStatus()async{

    // setRxRequestStatus(Status.LOADING);
    await  _repository.getSampleListFilterStatusData().then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setSampleListFilterStatus(value);
    }).onError((error, stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
    });
    return sampleListFilterStatus;
  }



}