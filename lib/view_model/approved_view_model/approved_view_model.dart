import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../data/response/status.dart';
import '../../repository/repository.dart';
import '../../utils/utils.dart';
import '../summery_view_model/summery_view_model.dart';

class ApprovedViewModel extends GetxController{


  final _repository = Repository();


  final rxRequestStatus = Status.LOADING.obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setError(String _value) => error.value = _value;

  /// operation Schedule status
  Future<void> postApprovedApiData({dynamic data}) async {
    print("post approved : $data");
    await _repository.postApprovedApiData(data).then((value) {

      Utils.snakBar("status", 'status update successfull');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }





}