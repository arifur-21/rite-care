import 'package:get/get.dart';

import '../../data/response/status.dart';
import '../../repository/search_repository/SearchRepository.dart';
import '../login_view_model/logged_in_user_model.dart';

class LoggedInUserViewModel extends GetxController{

  final _api = SearchRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final loggedInUser = LoggedInUserModel().obs;
  RxString error = ''.obs;


  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setError(String _value) => error.value = _value;

  void setLoggedInData(LoggedInUserModel _value) => loggedInUser.value = _value;

  /// get logged in user data
  Future<void> getLoggedInUserData() async{
    await _api.getLoggedInUserData().then((value) {
      setRxRequestStatus(Status.SUCCESS);
      setLoggedInData(value);

    }).onError((error, stackTrace){
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
      print("viewModel error ${error.toString()}");
    });
  }

}