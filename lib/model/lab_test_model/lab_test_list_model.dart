class LabTestListModel {
  List<Items>? items;
  int? totalItems;

  LabTestListModel({this.items, this.totalItems});

  LabTestListModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    totalItems = json['totalItems'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['totalItems'] = this.totalItems;
    return data;
  }
}

class Items {
  dynamic? name;
  dynamic? code;
  dynamic? itemTypeId;
  dynamic? medicalTypeId;
  dynamic? itemSpecimentId;
  dynamic? itemCategoryId;
  dynamic? isAntibiotic;
  dynamic? isSurgeryItem;
  dynamic? salePrice;
  dynamic? buyPrice;
  dynamic? referralAllowed;
  dynamic? description;
  dynamic? defaultReferrarFee;
  dynamic? labReportGroupId;
  dynamic? labCountDay;
  dynamic? isLabReportItem;
  dynamic? isActive;
  dynamic? createdDate;
  dynamic? noEquipment;
  dynamic? isCustomTemplate;
  dynamic? labItemSerialNo;
  dynamic? noDiscount;
  dynamic? shortCode;
  dynamic? isSlideRequired;
  ItemSpeciment? itemSpeciment;
  ItemCategory? itemCategory;
  LabReportGroup? labReportGroup;
  dynamic? expiryDate;
  dynamic? quantity;
  dynamic? prescriptionItemId;
  dynamic? parentItemId;
  dynamic? parentCategoryId;
  dynamic? isSpecialItem;
  dynamic? groupFormatName;
  dynamic? branchId;
  dynamic? branch;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  dynamic? active;
  dynamic? userId;
  dynamic? hasErrors;
  dynamic? errorCount;
  dynamic? noErrors;

  Items(
      {this.name,
        this.code,
        this.itemTypeId,
        this.medicalTypeId,
        this.itemSpecimentId,
        this.itemCategoryId,
        this.isSurgeryItem,
        this.salePrice,
        this.buyPrice,
        this.referralAllowed,
        this.description,
        this.defaultReferrarFee,
        this.labReportGroupId,
        this.labCountDay,
        this.isLabReportItem,
        this.isActive,
        this.createdDate,
        this.noEquipment,
        this.isCustomTemplate,
        this.labItemSerialNo,
        this.noDiscount,
        this.shortCode,
        this.isSlideRequired,
        this.itemSpeciment,
        this.itemCategory,
        this.labReportGroup,
        this.expiryDate,
        this.quantity,
        this.prescriptionItemId,
        this.parentItemId,
        this.parentCategoryId,
        this.isSpecialItem,
        this.groupFormatName,
        this.branchId,
        this.branch,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    code = json['Code'];
    itemTypeId = json['ItemTypeId'];
    medicalTypeId = json['MedicalTypeId'];
    itemSpecimentId = json['ItemSpecimentId'];
    itemCategoryId = json['ItemCategoryId'];
    isAntibiotic = json['IsAntibiotic'];
    isSurgeryItem = json['IsSurgeryItem'];
    salePrice = json['SalePrice'];
    buyPrice = json['BuyPrice'];
    referralAllowed = json['ReferralAllowed'];
    description = json['Description'];
    defaultReferrarFee = json['DefaultReferrarFee'];
    labReportGroupId = json['LabReportGroupId'];
    labCountDay = json['LabCountDay'];
    isLabReportItem = json['IsLabReportItem'];
    isActive = json['IsActive'];
    createdDate = json['CreatedDate'];
    noEquipment = json['NoEquipment'];
    isCustomTemplate = json['IsCustomTemplate'];
    labItemSerialNo = json['LabItemSerialNo'];
    noDiscount = json['NoDiscount'];
    shortCode = json['ShortCode'];
    isSlideRequired = json['IsSlideRequired'];
    itemSpeciment = json['ItemSpeciment'] != null
        ? new ItemSpeciment.fromJson(json['ItemSpeciment'])
        : null;
    itemCategory = json['ItemCategory'] != null
        ? new ItemCategory.fromJson(json['ItemCategory'])
        : null;

    labReportGroup = json['LabReportGroup'] != null
        ? new LabReportGroup.fromJson(json['LabReportGroup'])
        : null;
    expiryDate = json['ExpiryDate'];
    quantity = json['Quantity'];
    prescriptionItemId = json['PrescriptionItemId'];
    parentItemId = json['ParentItemId'];
    parentCategoryId = json['ParentCategoryId'];
    isSpecialItem = json['IsSpecialItem'];
    groupFormatName = json['GroupFormatName'];
    branchId = json['BranchId'];
    branch = json['Branch'];
    tenantId = json['TenantId'];
    tenant = json['Tenant'];
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
    data['Code'] = this.code;
    data['ItemTypeId'] = this.itemTypeId;
    data['MedicalTypeId'] = this.medicalTypeId;
    data['ItemSpecimentId'] = this.itemSpecimentId;
    data['ItemCategoryId'] = this.itemCategoryId;
    data['IsAntibiotic'] = this.isAntibiotic;
    data['IsSurgeryItem'] = this.isSurgeryItem;
    data['SalePrice'] = this.salePrice;
    data['BuyPrice'] = this.buyPrice;
    data['ReferralAllowed'] = this.referralAllowed;
    data['Description'] = this.description;
    data['DefaultReferrarFee'] = this.defaultReferrarFee;
    data['LabReportGroupId'] = this.labReportGroupId;
    data['LabCountDay'] = this.labCountDay;
    data['IsLabReportItem'] = this.isLabReportItem;
    data['IsActive'] = this.isActive;
    data['CreatedDate'] = this.createdDate;
    data['NoEquipment'] = this.noEquipment;
    data['IsCustomTemplate'] = this.isCustomTemplate;
    data['LabItemSerialNo'] = this.labItemSerialNo;
    data['NoDiscount'] = this.noDiscount;
    data['ShortCode'] = this.shortCode;
    data['IsSlideRequired'] = this.isSlideRequired;
    if (this.itemSpeciment != null) {
      data['ItemSpeciment'] = this.itemSpeciment!.toJson();
    }
    if (this.itemCategory != null) {
      data['ItemCategory'] = this.itemCategory!.toJson();
    }
    if (this.labReportGroup != null) {
      data['LabReportGroup'] = this.labReportGroup!.toJson();
    }

    data['ExpiryDate'] = this.expiryDate;
    data['Quantity'] = this.quantity;
    data['PrescriptionItemId'] = this.prescriptionItemId;
    data['ParentItemId'] = this.parentItemId;
    data['ParentCategoryId'] = this.parentCategoryId;
    data['IsSpecialItem'] = this.isSpecialItem;
    data['GroupFormatName'] = this.groupFormatName;
    data['BranchId'] = this.branchId;
    data['Branch'] = this.branch;
    data['TenantId'] = this.tenantId;
    data['Tenant'] = this.tenant;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class ItemSpeciment {
  dynamic? name;
  dynamic? medicalTypeId;
  List<dynamic>? items;
  dynamic? medicalType;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  dynamic? active;
  dynamic? userId;
  dynamic? hasErrors;
  dynamic? errorCount;
  dynamic? noErrors;

  ItemSpeciment(
      {this.name,
        this.medicalTypeId,
        this.items,
        this.medicalType,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  ItemSpeciment.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    medicalTypeId = json['MedicalTypeId'];

    medicalType = json['MedicalType'];
    tenantId = json['TenantId'];
    tenant = json['Tenant'];
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
    data['MedicalTypeId'] = this.medicalTypeId;
    data['MedicalType'] = this.medicalType;
    data['TenantId'] = this.tenantId;
    data['Tenant'] = this.tenant;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class ItemCategory {
  dynamic? name;
  dynamic? medicalTypeId;
  dynamic? referralCommission;
  dynamic? isPathology;
  dynamic? sampleId;
  List<dynamic>? items;
  List<dynamic>? itemSubCategories;
  dynamic? medicalType;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  dynamic? active;
  dynamic? userId;
  dynamic? hasErrors;
  dynamic? errorCount;
  dynamic? noErrors;

  ItemCategory(
      {this.name,
        this.medicalTypeId,
        this.referralCommission,
        this.isPathology,
        this.sampleId,
        this.items,
        this.itemSubCategories,
        this.medicalType,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  ItemCategory.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    medicalTypeId = json['MedicalTypeId'];
    referralCommission = json['ReferralCommission'];
    isPathology = json['IsPathology'];
    sampleId = json['SampleId'];
    medicalType = json['MedicalType'];
    tenantId = json['TenantId'];
    tenant = json['Tenant'];
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
    data['MedicalTypeId'] = this.medicalTypeId;
    data['ReferralCommission'] = this.referralCommission;
    data['IsPathology'] = this.isPathology;
    data['SampleId'] = this.sampleId;
    data['MedicalType'] = this.medicalType;
    data['TenantId'] = this.tenantId;
    data['Tenant'] = this.tenant;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}

class LabReportGroup {
  dynamic? name;
  List<dynamic>? items;
  dynamic? branchId;
  dynamic? branch;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  dynamic? active;
  dynamic? userId;
  dynamic? hasErrors;
  dynamic? errorCount;
  dynamic? noErrors;

  LabReportGroup(
      {this.name,
        this.items,
        this.branchId,
        this.branch,
        this.tenantId,
        this.tenant,
        this.id,
        this.active,
        this.userId,
        this.hasErrors,
        this.errorCount,
        this.noErrors});

  LabReportGroup.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    branchId = json['BranchId'];
    branch = json['Branch'];
    tenantId = json['TenantId'];
    tenant = json['Tenant'];
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
    data['BranchId'] = this.branchId;
    data['Branch'] = this.branch;
    data['TenantId'] = this.tenantId;
    data['Tenant'] = this.tenant;
    data['Id'] = this.id;
    data['Active'] = this.active;
    data['UserId'] = this.userId;
    data['HasErrors'] = this.hasErrors;
    data['ErrorCount'] = this.errorCount;
    data['NoErrors'] = this.noErrors;
    return data;
  }
}