


import 'package:ritecare_hms/data/response/status.dart';

class ApiRespons<T>{
  Status? status;
  T? data;
  String? message;

  ApiRespons(this.status, this.data, this.message);

  ApiRespons.loading(): status = Status.LOADING;
  ApiRespons.success(this.data): status = Status.SUCCESS;
  ApiRespons.error(this.message): status = Status.ERROR;

  @override
  String toString(){
    return "Status : $status \n Messsage : $message \n Data: $data";
  }
}