
class AppExceptions implements Exception{

  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString(){
    return '$_prefix, $_message';
  }
}

class InternetException extends AppExceptions{
InternetException([String? messaage]) : super (messaage, 'No internet');
}

class RequestTimeOut extends AppExceptions{
  RequestTimeOut([String? messaage]) : super (messaage, "Request Time out");
}

class UrlException extends AppExceptions{
  UrlException([String? messaage]) : super (messaage, "Base url not found");
}

class ServerException extends AppExceptions{
  ServerException([String? messaage]) : super (messaage, "Internel Server error");
}

class InvalidUrlException extends AppExceptions{
  InvalidUrlException([String? messaage]) : super (messaage, "UnAuthorize User");
}

class featchDataException extends AppExceptions{
  featchDataException([String? messaage]) : super (messaage, "");
}

class featchEmptyData extends AppExceptions{
  featchEmptyData([String? messaage]) : super (messaage, "item not found");
}