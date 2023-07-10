import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';

import '../../data/response/status.dart';

import '../../model/lab_test_model/summery_model0/item.dart';
import '../../model/lab_test_model/summery_model0/summery_model0.dart';

import '../../model/service_id_model/service_id_model.dart';
import '../../repository/search_repository/SearchRepository.dart';
import '../../shere_preference/login_preference.dart';

class SummeryViewModel extends GetxController {
  final _api = SearchRepository();
  // final _repository = Repository();
  LoginPreference loginPreference = LoginPreference();

  dynamic startDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;
  dynamic endDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).obs;

  final sampleIdController = TextEditingController().obs;
  final invoNumController = TextEditingController().obs;

  final textController = TextEditingController().obs;

  dynamic resultData;

  final rxRequestStatus = Status.LOADING.obs;
  final summeryListItem = SummeryModel().obs;

  RxString error = ''.obs;
  RxList<Item> items = <Item>[].obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setSummeryList(SummeryModel _value) => summeryListItem.value = _value;
  void setError(String _value) => error.value = _value;

  RxBool hasReachedMax = false.obs;
  RxInt pageNumber = 1.obs;
  RxInt categoryId = 0.obs;
  RxInt labTestSuggId = 0.obs;
  RxString scannBarCode = ''.obs;
  RxString statusName = 'All'.obs;





  /// get summery list data
  Future<void> getSummeryListData(
      {int labStatus = 0,
      int page = 1,
        dynamic labTestSuggNameId = null,
        String invoiceNum = '',
      bool isRefreshed = true,
      }) async {
    // ServiceIdModel? service = await loginPreference.getServiceId();
    print("----------------------------11111111111111-> status id 11111111111111111------------------------>");
    print(labStatus);
    print("lab name sugge Id vm121231----- $invoiceNum");

    if (isRefreshed == true) {
      pageNumber.value = 1;
       categoryId.value = labStatus;
     // labTestSuggId.value = labTestSuggNameId;
      hasReachedMax.value = false;

      await _api
          .getSummeryListData(
              startDate, endDate, categoryId.value, pageNumber.value, 0, labTestSuggNameId, invoiceNum)
          .then((value) {
        setRxRequestStatus(Status.SUCCESS);
        setSummeryList(value);
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
            .getSummeryListData(
                startDate, endDate, categoryId.value, pageNumber.value, 0, labTestSuggNameId, invoiceNum)
            .then((value) {
          setRxRequestStatus(Status.SUCCESS);
          setSummeryList(value);
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

}
