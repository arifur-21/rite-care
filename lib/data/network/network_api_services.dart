
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;


import '../../model/login_model/login_token_model.dart';
import '../../shere_preference/login_preference.dart';
import '../app_exceptions.dart';
import 'base_api_services.dart';

class NetworkApiServices extends BaseApServices {

  LoginPreference loginPreference = LoginPreference();
  dynamic token;
  dynamic refresh_token;



  ///get search patien data by id
  @override
  Future getPatientById(String id) async {
    dynamic baseUrl;
    await loginPreference.getSendEmail().then((value) {
      baseUrl = value.sendEamil;
      print("uri base11 ${baseUrl}");
    });

    await loginPreference.getToken().then((value)  {
      token =  value.accessToken!;
      refresh_token =  value.refreshToken!;

    });
    dynamic responseJson;
    try {
      final response = await http.get(
          Uri.parse(
              'https://$baseUrl/Patient/GetPatientById?id=${id}&oldId=false'),
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'cache-control': 'no-cache'
          }
      ).timeout(Duration(seconds: 30));
      responseJson = returnResponse(response);
      print("response json ${responseJson.length}");
    } on SocketException {
      throw UrlException();
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }on InternetException{
      throw InternetException();
    }

    return responseJson;
  }


  ///// get object list data
  @override
  Future getApiData(String url) async{

    print("-----------------------> url ----------------------------->");
    print(url);

    dynamic baseUrl;
    await loginPreference.getToken().then((value) {
      token =  value.accessToken!;
      refresh_token =  value.refreshToken!;
    });

    await loginPreference.getSendEmail().then((value) {
      baseUrl = value.sendEamil;
      print("uri base11 ${baseUrl}");
    });

    dynamic responseJson;

    try {
      final response = await http.get(
          Uri.parse("https://${baseUrl+url}"),
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'cache-control': 'no-cache'
          }
      ).timeout(Duration(seconds: 30));
      responseJson = returnResponse(response);
      print("response json ${responseJson.length}");
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    return responseJson;

  }

  @override
  Future<List> getListOfApiData(String url) async {
    print("end url $url");
    dynamic baseUrl;
    await loginPreference.getSendEmail().then((value) {
      baseUrl = value.sendEamil;
      print("uri base11 ${baseUrl}");
    });

    await  loginPreference.getToken().then((value) {
      token = value.accessToken!;
      refresh_token = value.refreshToken!;
    });

    dynamic responseJson;
    try {
      final response = await http.get(
          Uri.parse("https://${baseUrl+url}"),
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'cache-control': 'no-cache'
          }
      ).timeout(Duration(seconds: 30));
      if(response.body.isEmpty){
        throw featchEmptyData(" ");
      }else{
        responseJson = returnResponse(response);
      }

    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut('Request Time Out');
    }
    return responseJson;
  }

  /// login post api
  @override
  Future postLoginApi(dynamic data, String url) async {
    print("end url login $url");
    dynamic baseUrl;
    await loginPreference.getSendEmail().then((value) {
      baseUrl = value.sendEamil;
      print("uri base11 ${baseUrl}");
    });


    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse("https://${baseUrl+url}"),
          body: data).timeout(
          Duration(seconds: 30));
      responseJson = returnResponse(response);
    } catch(e){
      if(e is SocketException){
        print("login error ${e.toString()}");
      }else if(e is TimeoutException){
        throw RequestTimeOut("");
      }
    }
    return responseJson;
  }

  //post api
  @override
  Future postApiData(dynamic postData, String url) async {
    dynamic baseUrl;
    await loginPreference.getSendEmail().then((value) {
      baseUrl = value.sendEamil;
      print("uri base11 ${baseUrl}");
    });

    await  loginPreference.getToken().then((value) {
      token = value.accessToken!;
      refresh_token = value.refreshToken!;
    });
    dynamic responseJson;

    try {
      final response = await http.post(
          Uri.parse("https://${baseUrl+url}"),
          body: jsonEncode(postData),
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'cache-control': 'no-cache'
          }

      ).timeout(Duration(seconds: 30));
      responseJson = returnResponse(response);
      print("response repo ${response.body}");
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    return responseJson;


  }

  Future regenerateToken() async{
    dynamic baseUrl;
    await loginPreference.getSendEmail().then((value) {
      baseUrl = value.sendEamil;
      print("uri base11 ${baseUrl}");
    });

    await  loginPreference.getToken().then((value) {
      token = value.accessToken!;
      refresh_token = value.refreshToken!;
    });


    final response = await http.post(
      Uri.parse("https://$baseUrl/auth/token"),
      headers: {
        'grant_type': 'refresh_token',
      },
      body: {
        'grant_type': 'refresh_token',
        'refresh_token': '${refresh_token}',
      },
    );
    if(response.statusCode == 200){
      final json = jsonDecode(response.body);

      final accessToken = json['access_token'];
      print(accessToken);
      LoginTokenModel loginTokenModel = LoginTokenModel(
        accessToken: accessToken,
      );

      return loginTokenModel;
    }else{
      throw Exception('Failed to refresh access token');
    }

  }

  //// api exception handler
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:

        dynamic responseJson =  jsonDecode(response.body);
        return responseJson;

      case 401:
        print("unAuthorize");
        return regenerateToken();
      case 400:
        throw InvalidUrlException;
      default:
        throw featchDataException(
            "Error accoured while communication with server" +
                response.statusCode.toString());
    }
  }




}


