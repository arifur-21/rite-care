
import 'package:get/get.dart';
import 'package:ritecare_hms/model/login_model/login_token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/login_model/send_email_model.dart';
import '../model/service_id_model/service_id_model.dart';

class LoginPreference {

  Future<bool> saveToken(LoginTokenModel responseModel) async{

    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('access_token', responseModel.accessToken.toString());
    sp.setString('refresh_token', responseModel.refreshToken.toString());
    sp.setString('expires_in', responseModel.expiresIn.toString());
    sp.setString('token_type', responseModel.expiresIn.toString());

    return true;
  }

  Future<bool> saveServiceId(ServiceIdModel serviceIdModel) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('service_id', serviceIdModel.setviceId.toString());

    return true;
  }

  Future<ServiceIdModel> getServiceId() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? serviceId =  sp.getString('service_id');

   return ServiceIdModel(
      setviceId: serviceId,

    );

  }

  Future<bool> seveSendEmail(SendEmailModel sendEmailModel) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('send_email', sendEmailModel.sendEamil.toString());
      return true;
  }

  Future<SendEmailModel> getSendEmail() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? email =  sp.getString('send_email');
    print("get sp base_url ${email}");

    return SendEmailModel(
        sendEamil: email,

    );

  }


  Future<LoginTokenModel> getToken() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token =  sp.getString('access_token');
    String? refreshToken =  sp.getString('refresh_token');
    dynamic? expire =  sp.getString('expires_in');
    dynamic? type = sp.getString('token_type');

   // print("pre token get ${token}");

    return LoginTokenModel(
        accessToken: token,
        refreshToken: refreshToken,
        expiresIn: expire,
        tokenType: type
    );

  }



  Future<void> removeLoginToken() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
   await sp.remove('send_email');
   await sp.clear();

  }
}