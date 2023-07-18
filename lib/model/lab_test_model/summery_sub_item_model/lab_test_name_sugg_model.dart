class LabTestNameSuggModel {
  dynamic? name;
  dynamic? genericName;
  dynamic? code;
  dynamic? companyName;
  dynamic? itemTypeId;
  dynamic? medicalTypeId;
  dynamic? itemSpecimentId;
  dynamic? itemCategoryId;
  dynamic? itemSubCategoryId;
  dynamic? tenantId;
  dynamic? id;
  bool? active;


  LabTestNameSuggModel(
      {this.name,
        this.genericName,
        this.code,
        this.companyName,
        this.itemTypeId,
        this.medicalTypeId,
        this.itemSpecimentId,
        this.itemCategoryId,
        this.itemSubCategoryId,
        this.id,
        this.active,
       });

  LabTestNameSuggModel.fromJson(Map<dynamic, dynamic> json) {
    name = json['Name'];
    genericName = json['GenericName'];
    code = json['Code'];
    companyName = json['CompanyName'];
    itemTypeId = json['ItemTypeId'];
    medicalTypeId = json['MedicalTypeId'];
    itemSpecimentId = json['ItemSpecimentId'];
    itemCategoryId = json['ItemCategoryId'];
    itemSubCategoryId = json['ItemSubCategoryId'];
    tenantId = json['TenantId'];
    id = json['Id'];
    active = json['Active'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['GenericName'] = this.genericName;
    data['Code'] = this.code;
    data['CompanyName'] = this.companyName;
    data['ItemTypeId'] = this.itemTypeId;
    data['MedicalTypeId'] = this.medicalTypeId;
    data['ItemSpecimentId'] = this.itemSpecimentId;
    data['ItemCategoryId'] = this.itemCategoryId;
    data['ItemSubCategoryId'] = this.itemSubCategoryId;

       data['TenantId'] = this.tenantId;
    data['Id'] = this.id;
    data['Active'] = this.active;

    return data;
  }
}


