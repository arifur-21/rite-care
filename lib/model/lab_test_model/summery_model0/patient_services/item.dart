import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'item_category.dart';
import 'item_speciment.dart';
import 'lab_report_group.dart';

part 'item.g.dart';

@JsonSerializable()
class Item extends Equatable {
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'GenericName')
  final dynamic genericName;
  @JsonKey(name: 'Code')
  final String? code;
  @JsonKey(name: 'CompanyName')
  final dynamic companyName;
  @JsonKey(name: 'ItemTypeId')
  final dynamic itemTypeId;
  @JsonKey(name: 'MedicalTypeId')
  final dynamic medicalTypeId;
  @JsonKey(name: 'ItemSpecimentId')
  final dynamic itemSpecimentId;
  @JsonKey(name: 'ItemCategoryId')
  final dynamic itemCategoryId;
  @JsonKey(name: 'ItemSubCategoryId')
  final dynamic itemSubCategoryId;
  @JsonKey(name: 'ItemGroupCategoryId')
  final dynamic itemGroupCategoryId;
  @JsonKey(name: 'ItemSubGroupCategoryId')
  final dynamic itemSubGroupCategoryId;
  @JsonKey(name: 'SupplierOrVendorId')
  final dynamic supplierOrVendorId;
  @JsonKey(name: 'Strength')
  final dynamic strength;
  @JsonKey(name: 'Formulation')
  final dynamic formulation;
  @JsonKey(name: 'IsAntibiotic')
  final bool? isAntibiotic;
  @JsonKey(name: 'MedicineTypeId')
  final dynamic medicineTypeId;
  @JsonKey(name: 'IsSurgeryItem')
  final bool? isSurgeryItem;
  @JsonKey(name: 'MeasurementUnitId')
  final dynamic measurementUnitId;
  @JsonKey(name: 'SalePrice')
  final dynamic salePrice;
  @JsonKey(name: 'BuyPrice')
  final dynamic buyPrice;
  @JsonKey(name: 'ServiceProviderId')
  final dynamic serviceProviderId;
  @JsonKey(name: 'ReferralAllowed')
  final bool? referralAllowed;
  @JsonKey(name: 'Description')
  final String? description;
  @JsonKey(name: 'DefaultReferrarFee')
  final dynamic defaultReferrarFee;
  @JsonKey(name: 'LabReportGroupId')
  final dynamic labReportGroupId;
  @JsonKey(name: 'NurseStationId')
  final dynamic nurseStationId;
  @JsonKey(name: 'NurseStation')
  final dynamic nurseStation;
  @JsonKey(name: 'TaskTypeId')
  final dynamic taskTypeId;
  @JsonKey(name: 'TaskType')
  final dynamic taskType;
  @JsonKey(name: 'LabCountDay')
  final dynamic labCountDay;
  @JsonKey(name: 'IsLabReportItem')
  final bool? isLabReportItem;
  @JsonKey(name: 'IsActive')
  final bool? isActive;
  @JsonKey(name: 'CreatedDate')
  final String? createdDate;
  @JsonKey(name: 'NoEquipment')
  final bool? noEquipment;
  @JsonKey(name: 'IsCustomTemplate')
  final bool? isCustomTemplate;
  @JsonKey(name: 'LabItemSerialNo')
  final dynamic labItemSerialNo;
  @JsonKey(name: 'NoDiscount')
  final bool? noDiscount;
  @JsonKey(name: 'ShortCode')
  final String? shortCode;
  @JsonKey(name: 'IsSlideRequired')
  final bool? isSlideRequired;
  @JsonKey(name: 'BedOccupancies')
  final List<dynamic>? bedOccupancies;
  @JsonKey(name: 'Inventories')
  final List<dynamic>? inventories;
  @JsonKey(name: 'Item_ItemGroup')
  final List<dynamic>? itemItemGroup;
  @JsonKey(name: 'ItemDefaults')
  final List<dynamic>? itemDefaults;
  @JsonKey(name: 'ItemReorders')
  final List<dynamic>? itemReorders;
  @JsonKey(name: 'InitialSetupItems')
  final List<dynamic>? initialSetupItems;
  @JsonKey(name: 'ServiceProviderSurgeryPrices')
  final List<dynamic>? serviceProviderSurgeryPrices;
  @JsonKey(name: 'ItemType')
  final dynamic itemType;
  @JsonKey(name: 'ItemSpeciment')
  final ItemSpeciment? itemSpeciment;
  @JsonKey(name: 'ItemCategory')
  final ItemCategory? itemCategory;
  @JsonKey(name: 'ItemSubCategory')
  final dynamic itemSubCategory;
  @JsonKey(name: 'ItemGroupCategory')
  final dynamic itemGroupCategory;
  @JsonKey(name: 'ItemSubGroupCategory')
  final dynamic itemSubGroupCategory;
  @JsonKey(name: 'MedicineType')
  final dynamic medicineType;
  @JsonKey(name: 'MeasurementUnit')
  final dynamic measurementUnit;
  @JsonKey(name: 'MedicalType')
  final dynamic medicalType;
  @JsonKey(name: 'ServiceProvider')
  final dynamic serviceProvider;
  @JsonKey(name: 'LabReportGroup')
  final LabReportGroup? labReportGroup;
  @JsonKey(name: 'SupplierOrVendor')
  final dynamic supplierOrVendor;
  @JsonKey(name: 'PackageDetails')
  final List<dynamic>? packageDetails;
  @JsonKey(name: 'PatientServices')
  final List<dynamic>? patientServices;
  @JsonKey(name: 'ReceiptPayments')
  final List<dynamic>? receiptPayments;
  @JsonKey(name: 'InventoryItem')
  final List<dynamic>? inventoryItem;
  @JsonKey(name: 'ItemRequisition')
  final List<dynamic>? itemRequisition;
  @JsonKey(name: 'Item_SuplierOrVendors')
  final List<dynamic>? itemSuplierOrVendors;
  @JsonKey(name: 'ItemwiseValues')
  final dynamic itemwiseValues;
  @JsonKey(name: 'ExpiryDate')
  final String? expiryDate;
  @JsonKey(name: 'Inventory')
  final dynamic inventory;
  @JsonKey(name: 'Quantity')
  final dynamic quantity;
  @JsonKey(name: 'PrescriptionItemId')
  final dynamic prescriptionItemId;
  @JsonKey(name: 'ParentItemId')
  final dynamic parentItemId;
  @JsonKey(name: 'ParentCategoryId')
  final dynamic parentCategoryId;
  @JsonKey(name: 'IsSpecialItem')
  final bool? isSpecialItem;
  @JsonKey(name: 'GroupFormatName')
  final String? groupFormatName;
  @JsonKey(name: 'BranchId')
  final dynamic branchId;
  @JsonKey(name: 'Branch')
  final dynamic branch;
  @JsonKey(name: 'TenantId')
  final dynamic tenantId;
  @JsonKey(name: 'Tenant')
  final dynamic tenant;
  @JsonKey(name: 'Id')
  final dynamic id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'UserId')
  final dynamic userId;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final dynamic errorCount;
  @JsonKey(name: 'NoErrors')
  final bool? noErrors;

  const Item({
    this.name,
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
    this.noErrors,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  Item copyWith({
    String? name,
    dynamic genericName,
    String? code,
    dynamic companyName,
    dynamic itemTypeId,
    dynamic medicalTypeId,
    dynamic itemSpecimentId,
    dynamic itemCategoryId,
    dynamic itemSubCategoryId,
    dynamic itemGroupCategoryId,
    dynamic itemSubGroupCategoryId,
    dynamic supplierOrVendorId,
    dynamic strength,
    dynamic formulation,
    bool? isAntibiotic,
    dynamic medicineTypeId,
    bool? isSurgeryItem,
    dynamic measurementUnitId,
    dynamic salePrice,
    dynamic buyPrice,
    dynamic serviceProviderId,
    bool? referralAllowed,
    String? description,
    dynamic defaultReferrarFee,
    dynamic labReportGroupId,
    dynamic nurseStationId,
    dynamic nurseStation,
    dynamic taskTypeId,
    dynamic taskType,
    dynamic labCountDay,
    bool? isLabReportItem,
    bool? isActive,
    String? createdDate,
    bool? noEquipment,
    bool? isCustomTemplate,
    dynamic labItemSerialNo,
    bool? noDiscount,
    String? shortCode,
    bool? isSlideRequired,
    List<dynamic>? bedOccupancies,
    List<dynamic>? inventories,
    List<dynamic>? itemItemGroup,
    List<dynamic>? itemDefaults,
    List<dynamic>? itemReorders,
    List<dynamic>? initialSetupItems,
    List<dynamic>? serviceProviderSurgeryPrices,
    dynamic itemType,
    ItemSpeciment? itemSpeciment,
    ItemCategory? itemCategory,
    dynamic itemSubCategory,
    dynamic itemGroupCategory,
    dynamic itemSubGroupCategory,
    dynamic medicineType,
    dynamic measurementUnit,
    dynamic medicalType,
    dynamic serviceProvider,
    LabReportGroup? labReportGroup,
    dynamic supplierOrVendor,
    List<dynamic>? packageDetails,
    List<dynamic>? patientServices,
    List<dynamic>? receiptPayments,
    List<dynamic>? inventoryItem,
    List<dynamic>? itemRequisition,
    List<dynamic>? itemSuplierOrVendors,
    dynamic itemwiseValues,
    String? expiryDate,
    dynamic inventory,
    dynamic quantity,
    dynamic prescriptionItemId,
    dynamic parentItemId,
    dynamic parentCategoryId,
    bool? isSpecialItem,
    String? groupFormatName,
    dynamic branchId,
    dynamic branch,
    dynamic tenantId,
    dynamic tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return Item(
      name: name ?? this.name,
      genericName: genericName ?? this.genericName,
      code: code ?? this.code,
      companyName: companyName ?? this.companyName,
      itemTypeId: itemTypeId ?? this.itemTypeId,
      medicalTypeId: medicalTypeId ?? this.medicalTypeId,
      itemSpecimentId: itemSpecimentId ?? this.itemSpecimentId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemGroupCategoryId: itemGroupCategoryId ?? this.itemGroupCategoryId,
      itemSubGroupCategoryId:
          itemSubGroupCategoryId ?? this.itemSubGroupCategoryId,
      supplierOrVendorId: supplierOrVendorId ?? this.supplierOrVendorId,
      strength: strength ?? this.strength,
      formulation: formulation ?? this.formulation,
      isAntibiotic: isAntibiotic ?? this.isAntibiotic,
      medicineTypeId: medicineTypeId ?? this.medicineTypeId,
      isSurgeryItem: isSurgeryItem ?? this.isSurgeryItem,
      measurementUnitId: measurementUnitId ?? this.measurementUnitId,
      salePrice: salePrice ?? this.salePrice,
      buyPrice: buyPrice ?? this.buyPrice,
      serviceProviderId: serviceProviderId ?? this.serviceProviderId,
      referralAllowed: referralAllowed ?? this.referralAllowed,
      description: description ?? this.description,
      defaultReferrarFee: defaultReferrarFee ?? this.defaultReferrarFee,
      labReportGroupId: labReportGroupId ?? this.labReportGroupId,
      nurseStationId: nurseStationId ?? this.nurseStationId,
      nurseStation: nurseStation ?? this.nurseStation,
      taskTypeId: taskTypeId ?? this.taskTypeId,
      taskType: taskType ?? this.taskType,
      labCountDay: labCountDay ?? this.labCountDay,
      isLabReportItem: isLabReportItem ?? this.isLabReportItem,
      isActive: isActive ?? this.isActive,
      createdDate: createdDate ?? this.createdDate,
      noEquipment: noEquipment ?? this.noEquipment,
      isCustomTemplate: isCustomTemplate ?? this.isCustomTemplate,
      labItemSerialNo: labItemSerialNo ?? this.labItemSerialNo,
      noDiscount: noDiscount ?? this.noDiscount,
      shortCode: shortCode ?? this.shortCode,
      isSlideRequired: isSlideRequired ?? this.isSlideRequired,
      bedOccupancies: bedOccupancies ?? this.bedOccupancies,
      inventories: inventories ?? this.inventories,
      itemItemGroup: itemItemGroup ?? this.itemItemGroup,
      itemDefaults: itemDefaults ?? this.itemDefaults,
      itemReorders: itemReorders ?? this.itemReorders,
      initialSetupItems: initialSetupItems ?? this.initialSetupItems,
      serviceProviderSurgeryPrices:
          serviceProviderSurgeryPrices ?? this.serviceProviderSurgeryPrices,
      itemType: itemType ?? this.itemType,
      itemSpeciment: itemSpeciment ?? this.itemSpeciment,
      itemCategory: itemCategory ?? this.itemCategory,
      itemSubCategory: itemSubCategory ?? this.itemSubCategory,
      itemGroupCategory: itemGroupCategory ?? this.itemGroupCategory,
      itemSubGroupCategory: itemSubGroupCategory ?? this.itemSubGroupCategory,
      medicineType: medicineType ?? this.medicineType,
      measurementUnit: measurementUnit ?? this.measurementUnit,
      medicalType: medicalType ?? this.medicalType,
      serviceProvider: serviceProvider ?? this.serviceProvider,
      labReportGroup: labReportGroup ?? this.labReportGroup,
      supplierOrVendor: supplierOrVendor ?? this.supplierOrVendor,
      packageDetails: packageDetails ?? this.packageDetails,
      patientServices: patientServices ?? this.patientServices,
      receiptPayments: receiptPayments ?? this.receiptPayments,
      inventoryItem: inventoryItem ?? this.inventoryItem,
      itemRequisition: itemRequisition ?? this.itemRequisition,
      itemSuplierOrVendors: itemSuplierOrVendors ?? this.itemSuplierOrVendors,
      itemwiseValues: itemwiseValues ?? this.itemwiseValues,
      expiryDate: expiryDate ?? this.expiryDate,
      inventory: inventory ?? this.inventory,
      quantity: quantity ?? this.quantity,
      prescriptionItemId: prescriptionItemId ?? this.prescriptionItemId,
      parentItemId: parentItemId ?? this.parentItemId,
      parentCategoryId: parentCategoryId ?? this.parentCategoryId,
      isSpecialItem: isSpecialItem ?? this.isSpecialItem,
      groupFormatName: groupFormatName ?? this.groupFormatName,
      branchId: branchId ?? this.branchId,
      branch: branch ?? this.branch,
      tenantId: tenantId ?? this.tenantId,
      tenant: tenant ?? this.tenant,
      id: id ?? this.id,
      active: active ?? this.active,
      userId: userId ?? this.userId,
      hasErrors: hasErrors ?? this.hasErrors,
      errorCount: errorCount ?? this.errorCount,
      noErrors: noErrors ?? this.noErrors,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      name,
      genericName,
      code,
      companyName,
      itemTypeId,
      medicalTypeId,
      itemSpecimentId,
      itemCategoryId,
      itemSubCategoryId,
      itemGroupCategoryId,
      itemSubGroupCategoryId,
      supplierOrVendorId,
      strength,
      formulation,
      isAntibiotic,
      medicineTypeId,
      isSurgeryItem,
      measurementUnitId,
      salePrice,
      buyPrice,
      serviceProviderId,
      referralAllowed,
      description,
      defaultReferrarFee,
      labReportGroupId,
      nurseStationId,
      nurseStation,
      taskTypeId,
      taskType,
      labCountDay,
      isLabReportItem,
      isActive,
      createdDate,
      noEquipment,
      isCustomTemplate,
      labItemSerialNo,
      noDiscount,
      shortCode,
      isSlideRequired,
      bedOccupancies,
      inventories,
      itemItemGroup,
      itemDefaults,
      itemReorders,
      initialSetupItems,
      serviceProviderSurgeryPrices,
      itemType,
      itemSpeciment,
      itemCategory,
      itemSubCategory,
      itemGroupCategory,
      itemSubGroupCategory,
      medicineType,
      measurementUnit,
      medicalType,
      serviceProvider,
      labReportGroup,
      supplierOrVendor,
      packageDetails,
      patientServices,
      receiptPayments,
      inventoryItem,
      itemRequisition,
      itemSuplierOrVendors,
      itemwiseValues,
      expiryDate,
      inventory,
      quantity,
      prescriptionItemId,
      parentItemId,
      parentCategoryId,
      isSpecialItem,
      groupFormatName,
      branchId,
      branch,
      tenantId,
      tenant,
      id,
      active,
      userId,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
