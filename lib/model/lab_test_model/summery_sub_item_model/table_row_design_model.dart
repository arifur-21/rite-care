class TableRowDesignModel {
  List<Design>? design;
  bool? isMapped;

  TableRowDesignModel({this.design, this.isMapped});

  TableRowDesignModel.fromJson(Map<String, dynamic> json) {
    if (json['design'] != null) {
      design = <Design>[];
      json['design'].forEach((v) {
        design!.add(new Design.fromJson(v));
      });
    }
    isMapped = json['isMapped'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.design != null) {
      data['design'] = this.design!.map((v) => v.toJson()).toList();
    }
    data['isMapped'] = this.isMapped;
    return data;
  }
}

class Design {
  dynamic? itemId;
  dynamic? headerName;
  dynamic? headerNote;
  dynamic? name;
  bool? isResultDropDown;
  dynamic? result;
  dynamic? itemWiseValueId;
  bool? isUnitDropDown;
  dynamic? unitId;
  dynamic? opinionId;
  dynamic? comment;
  dynamic? referanceValue;
  dynamic? techonology;
  dynamic? machineUnitName;
  dynamic? createdDate;
  dynamic? opinionText;
  bool? isOpinionDropDown;
  dynamic? machineId;
  dynamic? serialNo;
  dynamic? machine;
  Item? item;
  Unit? unit;
  dynamic? opinion;
  dynamic? itemWiseValue;
  dynamic? labTemplateDesignComment;
  bool? isComment;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
  bool? noErrors;

  Design(
      {this.itemId,
      this.headerName,
      this.headerNote,
      this.name,
      this.isResultDropDown,
      this.result,
      this.itemWiseValueId,
      this.isUnitDropDown,
      this.unitId,
      this.opinionId,
      this.comment,
      this.referanceValue,
      this.techonology,
      this.machineUnitName,
      this.createdDate,
      this.opinionText,
      this.isOpinionDropDown,
      this.machineId,
      this.serialNo,
      this.machine,
      this.item,
      this.unit,
      this.opinion,
      this.itemWiseValue,
      this.labTemplateDesignComment,
      this.isComment,
      this.tenantId,
      this.tenant,
      this.id,
      this.active,
      this.userId,
      this.hasErrors,
      this.errorCount,
      this.noErrors});

  Design.fromJson(Map<String, dynamic> json) {
    itemId = json['ItemId'];
    headerName = json['HeaderName'];
    headerNote = json['HeaderNote'];
    name = json['Name'];
    isResultDropDown = json['IsResultDropDown'];
    result = json['Result'];
    itemWiseValueId = json['ItemWiseValueId'];
    isUnitDropDown = json['IsUnitDropDown'];
    unitId = json['UnitId'];
    opinionId = json['OpinionId'];
    comment = json['Comment'];
    referanceValue = json['ReferanceValue'];
    techonology = json['Techonology'];
    machineUnitName = json['MachineUnitName'];
    createdDate = json['CreatedDate'];
    opinionText = json['OpinionText'];
    isOpinionDropDown = json['IsOpinionDropDown'];
    machineId = json['MachineId'];
    serialNo = json['SerialNo'];
    machine = json['Machine'];
    item = json['Item'] != null ? new Item.fromJson(json['Item']) : null;
    unit = json['Unit'] != null ? new Unit.fromJson(json['Unit']) : null;
    opinion = json['Opinion'];
    itemWiseValue = json['ItemWiseValue'];
    labTemplateDesignComment = json['LabTemplateDesignComment'];
    isComment = json['IsComment'];
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
    data['ItemId'] = this.itemId;
    data['HeaderName'] = this.headerName;
    data['HeaderNote'] = this.headerNote;
    data['Name'] = this.name;
    data['IsResultDropDown'] = this.isResultDropDown;
    data['Result'] = this.result;
    data['ItemWiseValueId'] = this.itemWiseValueId;
    data['IsUnitDropDown'] = this.isUnitDropDown;
    data['UnitId'] = this.unitId;
    data['OpinionId'] = this.opinionId;
    data['Comment'] = this.comment;
    data['ReferanceValue'] = this.referanceValue;
    data['Techonology'] = this.techonology;
    data['MachineUnitName'] = this.machineUnitName;
    data['CreatedDate'] = this.createdDate;
    data['OpinionText'] = this.opinionText;
    data['IsOpinionDropDown'] = this.isOpinionDropDown;
    data['MachineId'] = this.machineId;
    data['SerialNo'] = this.serialNo;
    data['Machine'] = this.machine;
    if (this.item != null) {
      data['Item'] = this.item!.toJson();
    }
    if (this.unit != null) {
      data['Unit'] = this.unit!.toJson();
    }
    data['Opinion'] = this.opinion;
    data['ItemWiseValue'] = this.itemWiseValue;
    data['LabTemplateDesignComment'] = this.labTemplateDesignComment;
    data['IsComment'] = this.isComment;
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

class Item {
  dynamic? name;
  dynamic? genericName;
  dynamic? code;
  dynamic? companyName;
  dynamic? itemTypeId;
  dynamic? medicalTypeId;
  dynamic? itemSpecimentId;
  dynamic? itemCategoryId;
  dynamic? itemSubCategoryId;
  dynamic? itemGroupCategoryId;
  dynamic? itemSubGroupCategoryId;
  dynamic? supplierOrVendorId;
  dynamic? strength;
  dynamic? formulation;
  bool? isAntibiotic;
  dynamic? medicineTypeId;
  bool? isSurgeryItem;
  dynamic? measurementUnitId;
  dynamic? salePrice;
  dynamic? buyPrice;
  dynamic? serviceProviderId;
  bool? referralAllowed;
  dynamic? description;
  dynamic? defaultReferrarFee;
  dynamic? labReportGroupId;
  dynamic? nurseStationId;
  dynamic? nurseStation;
  dynamic? taskTypeId;
  dynamic? taskType;
  dynamic? labCountDay;
  bool? isLabReportItem;
  bool? isActive;
  dynamic? createdDate;
  bool? noEquipment;
  bool? isCustomTemplate;
  dynamic? labItemSerialNo;
  bool? noDiscount;
  dynamic? shortCode;
  bool? isSlideRequired;
  List<dynamic>? bedOccupancies;
  List<dynamic>? inventories;
  List<dynamic>? itemItemGroup;
  List<dynamic>? itemDefaults;
  List<dynamic>? itemReorders;
  List<dynamic>? initialSetupItems;
  List<dynamic>? serviceProviderSurgeryPrices;
  dynamic? itemType;
  ItemSpeciment? itemSpeciment;
  ItemCategory? itemCategory;
  dynamic? itemSubCategory;
  dynamic? itemGroupCategory;
  dynamic? itemSubGroupCategory;
  dynamic? medicineType;
  dynamic? measurementUnit;
  dynamic? medicalType;
  dynamic? serviceProvider;
  LabReportGroup? labReportGroup;
  dynamic? supplierOrVendor;
  List<dynamic>? packageDetails;
  List<dynamic>? patientServices;
  List<dynamic>? receiptPayments;
  List<dynamic>? inventoryItem;
  List<dynamic>? itemRequisition;
  List<dynamic>? itemSuplierOrVendors;
  dynamic? itemwiseValues;
  dynamic? expiryDate;
  dynamic? inventory;
  dynamic? quantity;
  dynamic? prescriptionItemId;
  dynamic? parentItemId;
  dynamic? parentCategoryId;
  bool? isSpecialItem;
  dynamic? groupFormatName;
  dynamic? branchId;
  dynamic? branch;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
  bool? noErrors;

  Item(
      {this.name,
      this.genericName,
      this.code,
      this.companyName,
      this.itemTypeId,
      this.medicalTypeId,
      this.itemSpecimentId,
      this.itemCategoryId,
      this.itemSubCategoryId,
      this.itemGroupCategoryId,
      this.itemSubGroupCategoryId,
      this.supplierOrVendorId,
      this.strength,
      this.formulation,
      this.isAntibiotic,
      this.medicineTypeId,
      this.isSurgeryItem,
      this.measurementUnitId,
      this.salePrice,
      this.buyPrice,
      this.serviceProviderId,
      this.referralAllowed,
      this.description,
      this.defaultReferrarFee,
      this.labReportGroupId,
      this.nurseStationId,
      this.nurseStation,
      this.taskTypeId,
      this.taskType,
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
      this.bedOccupancies,
      this.inventories,
      this.itemItemGroup,
      this.itemDefaults,
      this.itemReorders,
      this.initialSetupItems,
      this.serviceProviderSurgeryPrices,
      this.itemType,
      this.itemSpeciment,
      this.itemCategory,
      this.itemSubCategory,
      this.itemGroupCategory,
      this.itemSubGroupCategory,
      this.medicineType,
      this.measurementUnit,
      this.medicalType,
      this.serviceProvider,
      this.labReportGroup,
      this.supplierOrVendor,
      this.packageDetails,
      this.patientServices,
      this.receiptPayments,
      this.inventoryItem,
      this.itemRequisition,
      this.itemSuplierOrVendors,
      this.itemwiseValues,
      this.expiryDate,
      this.inventory,
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

  Item.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    genericName = json['GenericName'];
    code = json['Code'];
    companyName = json['CompanyName'];
    itemTypeId = json['ItemTypeId'];
    medicalTypeId = json['MedicalTypeId'];
    itemSpecimentId = json['ItemSpecimentId'];
    itemCategoryId = json['ItemCategoryId'];
    itemSubCategoryId = json['ItemSubCategoryId'];
    itemGroupCategoryId = json['ItemGroupCategoryId'];
    itemSubGroupCategoryId = json['ItemSubGroupCategoryId'];
    supplierOrVendorId = json['SupplierOrVendorId'];
    strength = json['Strength'];
    formulation = json['Formulation'];
    isAntibiotic = json['IsAntibiotic'];
    medicineTypeId = json['MedicineTypeId'];
    isSurgeryItem = json['IsSurgeryItem'];
    measurementUnitId = json['MeasurementUnitId'];
    salePrice = json['SalePrice'];
    buyPrice = json['BuyPrice'];
    serviceProviderId = json['ServiceProviderId'];
    referralAllowed = json['ReferralAllowed'];
    description = json['Description'];
    defaultReferrarFee = json['DefaultReferrarFee'];
    labReportGroupId = json['LabReportGroupId'];
    nurseStationId = json['NurseStationId'];
    nurseStation = json['NurseStation'];
    taskTypeId = json['TaskTypeId'];
    taskType = json['TaskType'];
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
    /*if (json['BedOccupancies'] != null) {
      bedOccupancies = <Null>[];
      json['BedOccupancies'].forEach((v) {
        bedOccupancies!.add(new Null.fromJson(v));
      });
    }
    if (json['Inventories'] != null) {
      inventories = <Null>[];
      json['Inventories'].forEach((v) {
        inventories!.add(new Null.fromJson(v));
      });
    }
    if (json['Item_ItemGroup'] != null) {
      itemItemGroup = <Null>[];
      json['Item_ItemGroup'].forEach((v) {
        itemItemGroup!.add(new Null.fromJson(v));
      });
    }
    if (json['ItemDefaults'] != null) {
      itemDefaults = <Null>[];
      json['ItemDefaults'].forEach((v) {
        itemDefaults!.add(new Null.fromJson(v));
      });
    }
    if (json['ItemReorders'] != null) {
      itemReorders = <Null>[];
      json['ItemReorders'].forEach((v) {
        itemReorders!.add(new Null.fromJson(v));
      });
    }
    if (json['InitialSetupItems'] != null) {
      initialSetupItems = <Null>[];
      json['InitialSetupItems'].forEach((v) {
        initialSetupItems!.add(new Null.fromJson(v));
      });
    }
    if (json['ServiceProviderSurgeryPrices'] != null) {
      serviceProviderSurgeryPrices = <Null>[];
      json['ServiceProviderSurgeryPrices'].forEach((v) {
        serviceProviderSurgeryPrices!.add(new Null.fromJson(v));
      });
    }*/
    itemType = json['ItemType'];
    itemSpeciment = json['ItemSpeciment'] != null
        ? new ItemSpeciment.fromJson(json['ItemSpeciment'])
        : null;
    itemCategory = json['ItemCategory'] != null
        ? new ItemCategory.fromJson(json['ItemCategory'])
        : null;
    itemSubCategory = json['ItemSubCategory'];
    itemGroupCategory = json['ItemGroupCategory'];
    itemSubGroupCategory = json['ItemSubGroupCategory'];
    medicineType = json['MedicineType'];
    measurementUnit = json['MeasurementUnit'];
    medicalType = json['MedicalType'];
    serviceProvider = json['ServiceProvider'];
    labReportGroup = json['LabReportGroup'] != null
        ? new LabReportGroup.fromJson(json['LabReportGroup'])
        : null;
    supplierOrVendor = json['SupplierOrVendor'];
    /*if (json['PackageDetails'] != null) {
      packageDetails = <Null>[];
      json['PackageDetails'].forEach((v) {
        packageDetails!.add(new Null.fromJson(v));
      });
    }
    if (json['PatientServices'] != null) {
      patientServices = <Null>[];
      json['PatientServices'].forEach((v) {
        patientServices!.add(new Null.fromJson(v));
      });
    }
    if (json['ReceiptPayments'] != null) {
      receiptPayments = <Null>[];
      json['ReceiptPayments'].forEach((v) {
        receiptPayments!.add(new Null.fromJson(v));
      });
    }
    if (json['InventoryItem'] != null) {
      inventoryItem = <Null>[];
      json['InventoryItem'].forEach((v) {
        inventoryItem!.add(new Null.fromJson(v));
      });
    }
    if (json['ItemRequisition'] != null) {
      itemRequisition = <Null>[];
      json['ItemRequisition'].forEach((v) {
        itemRequisition!.add(new Null.fromJson(v));
      });
    }
    if (json['Item_SuplierOrVendors'] != null) {
      itemSuplierOrVendors = <Null>[];
      json['Item_SuplierOrVendors'].forEach((v) {
        itemSuplierOrVendors!.add(new Null.fromJson(v));
      });
    }*/
    itemwiseValues = json['ItemwiseValues'];
    expiryDate = json['ExpiryDate'];
    inventory = json['Inventory'];
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
    data['GenericName'] = this.genericName;
    data['Code'] = this.code;
    data['CompanyName'] = this.companyName;
    data['ItemTypeId'] = this.itemTypeId;
    data['MedicalTypeId'] = this.medicalTypeId;
    data['ItemSpecimentId'] = this.itemSpecimentId;
    data['ItemCategoryId'] = this.itemCategoryId;
    data['ItemSubCategoryId'] = this.itemSubCategoryId;
    data['ItemGroupCategoryId'] = this.itemGroupCategoryId;
    data['ItemSubGroupCategoryId'] = this.itemSubGroupCategoryId;
    data['SupplierOrVendorId'] = this.supplierOrVendorId;
    data['Strength'] = this.strength;
    data['Formulation'] = this.formulation;
    data['IsAntibiotic'] = this.isAntibiotic;
    data['MedicineTypeId'] = this.medicineTypeId;
    data['IsSurgeryItem'] = this.isSurgeryItem;
    data['MeasurementUnitId'] = this.measurementUnitId;
    data['SalePrice'] = this.salePrice;
    data['BuyPrice'] = this.buyPrice;
    data['ServiceProviderId'] = this.serviceProviderId;
    data['ReferralAllowed'] = this.referralAllowed;
    data['Description'] = this.description;
    data['DefaultReferrarFee'] = this.defaultReferrarFee;
    data['LabReportGroupId'] = this.labReportGroupId;
    data['NurseStationId'] = this.nurseStationId;
    data['NurseStation'] = this.nurseStation;
    data['TaskTypeId'] = this.taskTypeId;
    data['TaskType'] = this.taskType;
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
    /* if (this.bedOccupancies != null) {
      data['BedOccupancies'] =
          this.bedOccupancies!.map((v) => v.toJson()).toList();
    }
    if (this.inventories != null) {
      data['Inventories'] = this.inventories!.map((v) => v.toJson()).toList();
    }
    if (this.itemItemGroup != null) {
      data['Item_ItemGroup'] =
          this.itemItemGroup!.map((v) => v.toJson()).toList();
    }
    if (this.itemDefaults != null) {
      data['ItemDefaults'] = this.itemDefaults!.map((v) => v.toJson()).toList();
    }
    if (this.itemReorders != null) {
      data['ItemReorders'] = this.itemReorders!.map((v) => v.toJson()).toList();
    }
    if (this.initialSetupItems != null) {
      data['InitialSetupItems'] =
          this.initialSetupItems!.map((v) => v.toJson()).toList();
    }
    if (this.serviceProviderSurgeryPrices != null) {
      data['ServiceProviderSurgeryPrices'] =
          this.serviceProviderSurgeryPrices!.map((v) => v.toJson()).toList();
    }*/
    data['ItemType'] = this.itemType;
    if (this.itemSpeciment != null) {
      data['ItemSpeciment'] = this.itemSpeciment!.toJson();
    }
    if (this.itemCategory != null) {
      data['ItemCategory'] = this.itemCategory!.toJson();
    }
    data['ItemSubCategory'] = this.itemSubCategory;
    data['ItemGroupCategory'] = this.itemGroupCategory;
    data['ItemSubGroupCategory'] = this.itemSubGroupCategory;
    data['MedicineType'] = this.medicineType;
    data['MeasurementUnit'] = this.measurementUnit;
    data['MedicalType'] = this.medicalType;
    data['ServiceProvider'] = this.serviceProvider;
    if (this.labReportGroup != null) {
      data['LabReportGroup'] = this.labReportGroup!.toJson();
    }
    data['SupplierOrVendor'] = this.supplierOrVendor;
    /*if (this.packageDetails != null) {
      data['PackageDetails'] =
          this.packageDetails!.map((v) => v.toJson()).toList();
    }
    if (this.patientServices != null) {
      data['PatientServices'] =
          this.patientServices!.map((v) => v.toJson()).toList();
    }
    if (this.receiptPayments != null) {
      data['ReceiptPayments'] =
          this.receiptPayments!.map((v) => v.toJson()).toList();
    }
    if (this.inventoryItem != null) {
      data['InventoryItem'] =
          this.inventoryItem!.map((v) => v.toJson()).toList();
    }
    if (this.itemRequisition != null) {
      data['ItemRequisition'] =
          this.itemRequisition!.map((v) => v.toJson()).toList();
    }
    if (this.itemSuplierOrVendors != null) {
      data['Item_SuplierOrVendors'] =
          this.itemSuplierOrVendors!.map((v) => v.toJson()).toList();
    }*/
    data['ItemwiseValues'] = this.itemwiseValues;
    data['ExpiryDate'] = this.expiryDate;
    data['Inventory'] = this.inventory;
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
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
  bool? noErrors;

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
    /*if (json['Items'] != null) {
      items = <Null>[];
      json['Items'].forEach((v) {
        items!.add(new Null.fromJson(v));
      });
    }*/
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
    /* if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }*/
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
  bool? isPathology;
  dynamic? sampleId;
  List<dynamic>? items;
  List<dynamic>? itemSubCategories;
  dynamic? medicalType;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
  bool? noErrors;

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
    /* if (json['Items'] != null) {
      items = <Null>[];
      json['Items'].forEach((v) {
        items!.add(new Null.fromJson(v));
      });
    }*/
    /* if (json['ItemSubCategories'] != null) {
      itemSubCategories = <Null>[];
      json['ItemSubCategories'].forEach((v) {
        itemSubCategories!.add(new Null.fromJson(v));
      });
    }*/
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
    /* if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
    if (this.itemSubCategories != null) {
      data['ItemSubCategories'] =
          this.itemSubCategories!.map((v) => v.toJson()).toList();
    }*/
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
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
  bool? noErrors;

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
    /* if (json['Items'] != null) {
      items = <Null>[];
      json['Items'].forEach((v) {
        items!.add(new Null.fromJson(v));
      });
    }*/
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
    /*if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }*/
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

class Unit {
  dynamic? name;
  dynamic? createdDate;
  dynamic? tenantId;
  dynamic? tenant;
  dynamic? id;
  bool? active;
  dynamic? userId;
  bool? hasErrors;
  dynamic? errorCount;
  bool? noErrors;

  Unit(
      {this.name,
      this.createdDate,
      this.tenantId,
      this.tenant,
      this.id,
      this.active,
      this.userId,
      this.hasErrors,
      this.errorCount,
      this.noErrors});

  Unit.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    createdDate = json['CreatedDate'];
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
    data['CreatedDate'] = this.createdDate;
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
