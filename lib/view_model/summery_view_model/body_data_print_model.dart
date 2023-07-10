import 'package:get/get.dart';

class BodyDataPrintModel extends GetxController {
  RxString bodyData = ''.obs;

  void getBodyData(String v) {
    bodyData.value = v;
  }
}
