


import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../repository/repository.dart';
import '../../../utils/utils.dart';

class MarkeAsPrintedViewModel extends GetxController{

  final _repository = Repository();


  /// operation Schedule status
  Future<void> postMarkAsPrintedDAta({dynamic data}) async {
    print("test marke as printed");

    await _repository.postMarkeAsPientedData(data).then((value) {
      Utils.snakBar("status", 'status update successfull');
    }).onError((error, stackTrace) {
      Utils.snakBar("Error", error.toString());
      print("error occured : ${error.toString()}");
    });
  }



}