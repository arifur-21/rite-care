import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/response/status.dart';
import '../../model/lab_test_model/lab_test_list_model.dart';
import '../../model/lab_test_model/lab_test_list_status_model.dart';
import '../../repository/repository.dart';

class LabTestListViewModel extends GetxController {
  final _repository = Repository();

  Rx<Status> rxRequestStatus = Status.LOADING.obs;
  final labTestListData = LabTestListModel().obs;
  final labTestListFilterStatus = <LabTestListStatusModel>[].obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value;
  void setLabTestList(LabTestListModel value) => labTestListData.value = value;
  void setLabTestListFilterStatus(List<LabTestListStatusModel> value) => labTestListFilterStatus.value = value;
  void setError(String value) => error.value = value;

  RxBool hasReachedMax = false.obs;

  RxList<Items> items = <Items>[].obs;
  RxInt pageNumber = 1.obs;
  RxInt categoryId = 0.obs;
  RxString statusName = ''.obs;

  /// get lab test list data
  Future<void> getLabTestListData(
      {int labStatus = 0, int page = 1, bool isRefreshed = true, labTestSuggNameId}) async {
    print("lab name sugge Id vm121231----- $labTestSuggNameId");
    if (isRefreshed == true) {
      pageNumber.value = 1;
      categoryId.value = labStatus;

      hasReachedMax.value = false;

      await _repository
          .getLabTestListApi(
          categoryId.value == 0 ? "" : categoryId.value, pageNumber.value, labTestSuggNameId)
          .then((value) {
        setRxRequestStatus(Status.SUCCESS);

        setLabTestList(value);
        items.value = [];

        items.addAll(value.items ?? []);
        // pageNumber.value++;
        if ((value.items?.length ?? 0) < 10) {
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

        await _repository
            .getLabTestListApi(
            categoryId.value == 0 ? "" : categoryId.value, pageNumber.value, labTestSuggNameId)
            .then((value) {
          setRxRequestStatus(Status.SUCCESS);
          setLabTestList(value);
          items.addAll(value.items ?? []);
          if (value.items!.length < 10) {
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

  //get lab test list filter status
  Future<List<LabTestListStatusModel>> getLabTestListStatusData() async {
    //  setRxRequestStatus(Status.LOADING);
    await _repository.getLabTestListFilterStatusData().then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setLabTestListFilterStatus(value);
      print("sample status ${value}");
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("sample list filter status ${error.toString()}");
    });
    return labTestListFilterStatus;
  }
}
