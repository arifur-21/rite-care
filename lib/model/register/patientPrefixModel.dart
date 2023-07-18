class PatientPrefixModel {
  dynamic? name;
  dynamic? prefix;
  dynamic? languageCode;
  dynamic? id;
  dynamic? active;
  dynamic? userId;
  dynamic? hasErrors;
  dynamic? errorCount;
  dynamic? noErrors;

  PatientPrefixModel(
      {this.name,
        this.prefix,
        this.languageCode,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  PatientPrefixModel.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    prefix = json['Prefix'];
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
    data['Prefix'] = this.prefix;
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