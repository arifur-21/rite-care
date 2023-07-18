import 'package:get/get.dart';

import '../../../data/response/status.dart';
import '../../../model/lab_test_model/summery_sub_item_model/lab_test_name_sugg_model.dart';
import '../../../repository/repository.dart';

class LabTestListFilterSuggViewModel extends GetxController{

  final _repository = Repository();
  Rx<Status> rxRequestStatus = Status.LOADING.obs;
  RxString error = ''.obs;

  final labTestNameSuggList = <LabTestNameSuggModel>[].obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value;
  void setError(String value) => error.value = value;

  void setLabTestNameSugg(List<LabTestNameSuggModel> _value) => labTestNameSuggList.value = _value;


  //get lab test list filter suggestion
  Future<List<LabTestNameSuggModel>> getLabTestNameSuggData({String? query})async {
    print("sugg name ${query}");
    // setRxRequestStatus(Status.LOADING);
    await _repository.getLabTestNameSuggData(query!).then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setLabTestNameSugg(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error  ${error.toString()}");
    });

    return labTestNameSuggList;
  }


}