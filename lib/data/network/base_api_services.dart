abstract class BaseApServices {
  //// search api
  Future<dynamic> getPatientById(String id);
  Future<List<dynamic>> getListOfApiData(String url);

  //get object list data
  Future<dynamic> getApiData(String url);

  ////post api
  Future<dynamic> postLoginApi(dynamic data, String url);

  Future<dynamic> postApiData(dynamic postData, String url);
}
