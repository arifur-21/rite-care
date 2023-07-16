
class SendEmailModel {
  dynamic? sendEamil;


  SendEmailModel(
      {this.sendEamil, });

  SendEmailModel.fromJson(Map<String, dynamic> json) {
    sendEamil = json['send_email'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['send_email'] = this.sendEamil;

    return data;
  }

}


