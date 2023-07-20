class StatusListModel {
  String? name;
  List<Null>? patientInvoices;
  Null? languageCode;
  int? id;
  bool? active;
  Null? userId;
  bool? hasErrors;
  int? errorCount;
  bool? noErrors;

  StatusListModel(
      {this.name,
        this.patientInvoices,
        this.languageCode,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  StatusListModel.fromJson(Map<dynamic, dynamic> json) {
    name = json['Name'];
    if (json['PatientInvoices'] != null) {
      patientInvoices = <Null>[];
      json['PatientInvoices'].forEach((v) {
    //    patientInvoices!.add(new Null.fromJson(v));
      });
    }
    languageCode = json['LanguageCode'];
    id = json['Id'];
    active = json['Active'];
    userId = json['UserId'];
    hasErrors = json['HasErrors'];
    errorCount = json['ErrorCount'];
    noErrors = json['NoErrors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    if (this.patientInvoices != null) {
    //  data['PatientInvoices'] = this.patientInvoices!.map((v) => v.toJson()).toList();
    }
    data['LanguageCode'] = this.languageCode;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}