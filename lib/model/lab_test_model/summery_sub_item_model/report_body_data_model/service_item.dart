import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'patient.dart';

part 'service_item.g.dart';

@JsonSerializable()
class ServiceItem extends Equatable {
  @JsonKey(name: 'PatientID')
  final dynamic patientId;
  @JsonKey(name: 'ItemId')
  final dynamic itemId;
  @JsonKey(name: 'InvoiceID')
  final dynamic invoiceId;
  @JsonKey(name: 'ReceiptId')
  final dynamic receiptId;
  @JsonKey(name: 'PatientAdmissionId')
  final dynamic patientAdmissionId;
  @JsonKey(name: 'NurseStationId')
  final dynamic nurseStationId;
  @JsonKey(name: 'ServiceListPrice')
  final dynamic serviceListPrice;
  @JsonKey(name: 'ServiceActualPrice')
  final dynamic serviceActualPrice;
  @JsonKey(name: 'ServiceQuantity')
  final dynamic serviceQuantity;
  @JsonKey(name: 'ServiceDate')
  final String? serviceDate;
  @JsonKey(name: 'ReferralPaidDate')
  final dynamic referralPaidDate;
  @JsonKey(name: 'ModifiedDate')
  final dynamic modifiedDate;
  @JsonKey(name: 'CheckoutTime')
  final dynamic checkoutTime;
  @JsonKey(name: 'ServiceProviderId')
  final dynamic serviceProviderId;
  @JsonKey(name: 'DoctorId')
  final dynamic doctorId;
  @JsonKey(name: 'DoctorName')
  final String? doctorName;
  @JsonKey(name: 'ReturnQantity')
  final dynamic returnQantity;
  @JsonKey(name: 'ReturnPrice')
  final dynamic returnPrice;
  @JsonKey(name: 'ReturnPaid')
  final dynamic returnPaid;
  @JsonKey(name: 'ReferrerPaidUserId')
  final dynamic referrerPaidUserId;
  @JsonKey(name: 'ReferrerPaidUser')
  final dynamic referrerPaidUser;
  @JsonKey(name: 'Discount')
  final dynamic discount;
  @JsonKey(name: 'DiscountAfterInvoice')
  final bool? discountAfterInvoice;
  @JsonKey(name: 'IsBothSideDiscount')
  final bool? isBothSideDiscount;
  @JsonKey(name: 'DiscountPercentage')
  final dynamic discountPercentage;
  @JsonKey(name: 'Refund')
  final bool? refund;
  @JsonKey(name: 'RefundApprovedBy')
  final dynamic refundApprovedBy;
  @JsonKey(name: 'RefundStatus')
  final dynamic refundStatus;
  @JsonKey(name: 'RefundApproval')
  final bool? refundApproval;
  @JsonKey(name: 'IsReturn')
  final bool? isReturn;
  @JsonKey(name: 'RefundNote')
  final dynamic refundNote;
  @JsonKey(name: 'Billed')
  final bool? billed;
  @JsonKey(name: 'ReferralFee')
  final dynamic referralFee;
  @JsonKey(name: 'ReferralFeePaid')
  final bool? referralFeePaid;
  @JsonKey(name: 'ReferralFeeActual')
  final dynamic referralFeeActual;
  @JsonKey(name: 'DeliveryDate')
  final String? deliveryDate;
  @JsonKey(name: 'DeliveryTime')
  final dynamic deliveryTime;
  @JsonKey(name: 'ReportFormatName')
  final dynamic reportFormatName;
  @JsonKey(name: 'LabStatusId')
  final dynamic labStatusId;
  @JsonKey(name: 'InventoryId')
  final dynamic inventoryId;
  @JsonKey(name: 'ModifiedBy')
  final dynamic modifiedBy;
  @JsonKey(name: 'PrescriptionItemId')
  final dynamic prescriptionItemId;
  @JsonKey(name: 'SampleId')
  final dynamic sampleId;
  @JsonKey(name: 'Sl')
  final String? sl;
  @JsonKey(name: 'IsSpecialItem')
  final bool? isSpecialItem;
  @JsonKey(name: 'PackageItemId')
  final dynamic packageItemId;
  @JsonKey(name: 'PackageSeviceId')
  final dynamic packageSeviceId;
  @JsonKey(name: 'SlideNumber')
  final dynamic slideNumber;
  @JsonKey(name: 'SignApprovedDate')
  final dynamic signApprovedDate;
  @JsonKey(name: 'SignApprovedBy')
  final dynamic signApprovedBy;
  @JsonKey(name: 'IsForeignMission')
  final bool? isForeignMission;
  @JsonKey(name: 'IsBarCodePrint')
  final bool? isBarCodePrint;
  @JsonKey(name: 'SignApprovedByUser')
  final dynamic signApprovedByUser;
  @JsonKey(name: 'LabStatus')
  final dynamic labStatus;
  @JsonKey(name: 'Inventory')
  final dynamic inventory;
  @JsonKey(name: 'User')
  final dynamic user;
  @JsonKey(name: 'Patient')
  final Patient? patient;
  @JsonKey(name: 'PatientInvoice')
  final dynamic patientInvoice;
  @JsonKey(name: 'PrescriptionItem')
  final dynamic prescriptionItem;
  @JsonKey(name: 'NurseStation')
  final dynamic nurseStation;
  @JsonKey(name: 'ReceiptPayment')
  final dynamic receiptPayment;
  @JsonKey(name: 'PatientAdmission')
  final dynamic patientAdmission;
  @JsonKey(name: 'ImagingDetails')
  final List<dynamic>? imagingDetails;
  @JsonKey(name: 'PatientServicePayments')
  final dynamic patientServicePayments;
  @JsonKey(name: 'SignContactId')
  final dynamic signContactId;
  @JsonKey(name: 'Isgroup')
  final bool? isgroup;
  @JsonKey(name: 'PatientServiceIds')
  final dynamic patientServiceIds;
  @JsonKey(name: 'GroupItemIds')
  final dynamic groupItemIds;
  @JsonKey(name: 'MedicalTypeId')
  final dynamic medicalTypeId;
  @JsonKey(name: 'BeforeReturnPrice')
  final dynamic beforeReturnPrice;
  @JsonKey(name: 'ReturnBackupPrice')
  final dynamic returnBackupPrice;
  @JsonKey(name: 'FullReturnServiceListPrice')
  final dynamic fullReturnServiceListPrice;
  @JsonKey(name: 'Amount')
  final dynamic amount;
  @JsonKey(name: 'MedicalTypeName')
  final dynamic medicalTypeName;
  @JsonKey(name: 'PreviousDoctorName')
  final dynamic previousDoctorName;
  @JsonKey(name: 'HasImage')
  final bool? hasImage;
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

  const ServiceItem({
    this.patientId,
    this.itemId,
    this.invoiceId,
    this.receiptId,
    this.patientAdmissionId,
    this.nurseStationId,
    this.serviceListPrice,
    this.serviceActualPrice,
    this.serviceQuantity,
    this.serviceDate,
    this.referralPaidDate,
    this.modifiedDate,
    this.checkoutTime,
    this.serviceProviderId,
    this.doctorId,
    this.doctorName,
    this.returnQantity,
    this.returnPrice,
    this.returnPaid,
    this.referrerPaidUserId,
    this.referrerPaidUser,
    this.discount,
    this.discountAfterInvoice,
    this.isBothSideDiscount,
    this.discountPercentage,
    this.refund,
    this.refundApprovedBy,
    this.refundStatus,
    this.refundApproval,
    this.isReturn,
    this.refundNote,
    this.billed,
    this.referralFee,
    this.referralFeePaid,
    this.referralFeeActual,
    this.deliveryDate,
    this.deliveryTime,
    this.reportFormatName,
    this.labStatusId,
    this.inventoryId,
    this.modifiedBy,
    this.prescriptionItemId,
    this.sampleId,
    this.sl,
    this.isSpecialItem,
    this.packageItemId,
    this.packageSeviceId,
    this.slideNumber,
    this.signApprovedDate,
    this.signApprovedBy,
    this.isForeignMission,
    this.isBarCodePrint,
    this.signApprovedByUser,
    this.labStatus,
    this.inventory,
    this.user,
    this.patient,
    this.patientInvoice,
    this.prescriptionItem,
    this.nurseStation,
    this.receiptPayment,
    this.patientAdmission,
    this.imagingDetails,
    this.patientServicePayments,
    this.signContactId,
    this.isgroup,
    this.patientServiceIds,
    this.groupItemIds,
    this.medicalTypeId,
    this.beforeReturnPrice,
    this.returnBackupPrice,
    this.fullReturnServiceListPrice,
    this.amount,
    this.medicalTypeName,
    this.previousDoctorName,
    this.hasImage,
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

  factory ServiceItem.fromJson(Map<String, dynamic> json) {
    return _$ServiceItemFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceItemToJson(this);

  ServiceItem copyWith({
    dynamic patientId,
    dynamic itemId,
    dynamic invoiceId,
    dynamic receiptId,
    dynamic patientAdmissionId,
    dynamic nurseStationId,
    dynamic serviceListPrice,
    dynamic serviceActualPrice,
    dynamic serviceQuantity,
    String? serviceDate,
    dynamic referralPaidDate,
    dynamic modifiedDate,
    dynamic checkoutTime,
    dynamic serviceProviderId,
    dynamic doctorId,
    String? doctorName,
    dynamic returnQantity,
    dynamic returnPrice,
    dynamic returnPaid,
    dynamic referrerPaidUserId,
    dynamic referrerPaidUser,
    dynamic discount,
    bool? discountAfterInvoice,
    bool? isBothSideDiscount,
    dynamic discountPercentage,
    bool? refund,
    dynamic refundApprovedBy,
    dynamic refundStatus,
    bool? refundApproval,
    bool? isReturn,
    dynamic refundNote,
    bool? billed,
    dynamic referralFee,
    bool? referralFeePaid,
    dynamic referralFeeActual,
    String? deliveryDate,
    dynamic deliveryTime,
    dynamic reportFormatName,
    dynamic labStatusId,
    dynamic inventoryId,
    dynamic modifiedBy,
    dynamic prescriptionItemId,
    dynamic sampleId,
    String? sl,
    bool? isSpecialItem,
    dynamic packageItemId,
    dynamic packageSeviceId,
    dynamic slideNumber,
    dynamic signApprovedDate,
    dynamic signApprovedBy,
    bool? isForeignMission,
    bool? isBarCodePrint,
    dynamic signApprovedByUser,
    dynamic labStatus,
    dynamic inventory,
    dynamic user,
    Patient? patient,
    dynamic patientInvoice,
    dynamic prescriptionItem,
    dynamic nurseStation,
    dynamic receiptPayment,
    dynamic patientAdmission,
    List<dynamic>? imagingDetails,
    dynamic patientServicePayments,
    dynamic signContactId,
    bool? isgroup,
    dynamic patientServiceIds,
    dynamic groupItemIds,
    dynamic medicalTypeId,
    dynamic beforeReturnPrice,
    dynamic returnBackupPrice,
    dynamic fullReturnServiceListPrice,
    dynamic amount,
    dynamic medicalTypeName,
    dynamic previousDoctorName,
    bool? hasImage,
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
    return ServiceItem(
      patientId: patientId ?? this.patientId,
      itemId: itemId ?? this.itemId,
      invoiceId: invoiceId ?? this.invoiceId,
      receiptId: receiptId ?? this.receiptId,
      patientAdmissionId: patientAdmissionId ?? this.patientAdmissionId,
      nurseStationId: nurseStationId ?? this.nurseStationId,
      serviceListPrice: serviceListPrice ?? this.serviceListPrice,
      serviceActualPrice: serviceActualPrice ?? this.serviceActualPrice,
      serviceQuantity: serviceQuantity ?? this.serviceQuantity,
      serviceDate: serviceDate ?? this.serviceDate,
      referralPaidDate: referralPaidDate ?? this.referralPaidDate,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      checkoutTime: checkoutTime ?? this.checkoutTime,
      serviceProviderId: serviceProviderId ?? this.serviceProviderId,
      doctorId: doctorId ?? this.doctorId,
      doctorName: doctorName ?? this.doctorName,
      returnQantity: returnQantity ?? this.returnQantity,
      returnPrice: returnPrice ?? this.returnPrice,
      returnPaid: returnPaid ?? this.returnPaid,
      referrerPaidUserId: referrerPaidUserId ?? this.referrerPaidUserId,
      referrerPaidUser: referrerPaidUser ?? this.referrerPaidUser,
      discount: discount ?? this.discount,
      discountAfterInvoice: discountAfterInvoice ?? this.discountAfterInvoice,
      isBothSideDiscount: isBothSideDiscount ?? this.isBothSideDiscount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      refund: refund ?? this.refund,
      refundApprovedBy: refundApprovedBy ?? this.refundApprovedBy,
      refundStatus: refundStatus ?? this.refundStatus,
      refundApproval: refundApproval ?? this.refundApproval,
      isReturn: isReturn ?? this.isReturn,
      refundNote: refundNote ?? this.refundNote,
      billed: billed ?? this.billed,
      referralFee: referralFee ?? this.referralFee,
      referralFeePaid: referralFeePaid ?? this.referralFeePaid,
      referralFeeActual: referralFeeActual ?? this.referralFeeActual,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      reportFormatName: reportFormatName ?? this.reportFormatName,
      labStatusId: labStatusId ?? this.labStatusId,
      inventoryId: inventoryId ?? this.inventoryId,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      prescriptionItemId: prescriptionItemId ?? this.prescriptionItemId,
      sampleId: sampleId ?? this.sampleId,
      sl: sl ?? this.sl,
      isSpecialItem: isSpecialItem ?? this.isSpecialItem,
      packageItemId: packageItemId ?? this.packageItemId,
      packageSeviceId: packageSeviceId ?? this.packageSeviceId,
      slideNumber: slideNumber ?? this.slideNumber,
      signApprovedDate: signApprovedDate ?? this.signApprovedDate,
      signApprovedBy: signApprovedBy ?? this.signApprovedBy,
      isForeignMission: isForeignMission ?? this.isForeignMission,
      isBarCodePrint: isBarCodePrint ?? this.isBarCodePrint,
      signApprovedByUser: signApprovedByUser ?? this.signApprovedByUser,
      labStatus: labStatus ?? this.labStatus,
      inventory: inventory ?? this.inventory,
      user: user ?? this.user,
      patient: patient ?? this.patient,
      patientInvoice: patientInvoice ?? this.patientInvoice,
      prescriptionItem: prescriptionItem ?? this.prescriptionItem,
      nurseStation: nurseStation ?? this.nurseStation,
      receiptPayment: receiptPayment ?? this.receiptPayment,
      patientAdmission: patientAdmission ?? this.patientAdmission,
      imagingDetails: imagingDetails ?? this.imagingDetails,
      patientServicePayments:
          patientServicePayments ?? this.patientServicePayments,
      signContactId: signContactId ?? this.signContactId,
      isgroup: isgroup ?? this.isgroup,
      patientServiceIds: patientServiceIds ?? this.patientServiceIds,
      groupItemIds: groupItemIds ?? this.groupItemIds,
      medicalTypeId: medicalTypeId ?? this.medicalTypeId,
      beforeReturnPrice: beforeReturnPrice ?? this.beforeReturnPrice,
      returnBackupPrice: returnBackupPrice ?? this.returnBackupPrice,
      fullReturnServiceListPrice:
          fullReturnServiceListPrice ?? this.fullReturnServiceListPrice,
      amount: amount ?? this.amount,
      medicalTypeName: medicalTypeName ?? this.medicalTypeName,
      previousDoctorName: previousDoctorName ?? this.previousDoctorName,
      hasImage: hasImage ?? this.hasImage,
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
      patientId,
      itemId,
      invoiceId,
      receiptId,
      patientAdmissionId,
      nurseStationId,
      serviceListPrice,
      serviceActualPrice,
      serviceQuantity,
      serviceDate,
      referralPaidDate,
      modifiedDate,
      checkoutTime,
      serviceProviderId,
      doctorId,
      doctorName,
      returnQantity,
      returnPrice,
      returnPaid,
      referrerPaidUserId,
      referrerPaidUser,
      discount,
      discountAfterInvoice,
      isBothSideDiscount,
      discountPercentage,
      refund,
      refundApprovedBy,
      refundStatus,
      refundApproval,
      isReturn,
      refundNote,
      billed,
      referralFee,
      referralFeePaid,
      referralFeeActual,
      deliveryDate,
      deliveryTime,
      reportFormatName,
      labStatusId,
      inventoryId,
      modifiedBy,
      prescriptionItemId,
      sampleId,
      sl,
      isSpecialItem,
      packageItemId,
      packageSeviceId,
      slideNumber,
      signApprovedDate,
      signApprovedBy,
      isForeignMission,
      isBarCodePrint,
      signApprovedByUser,
      labStatus,
      inventory,
      user,
      patient,
      patientInvoice,
      prescriptionItem,
      nurseStation,
      receiptPayment,
      patientAdmission,
      imagingDetails,
      patientServicePayments,
      signContactId,
      isgroup,
      patientServiceIds,
      groupItemIds,
      medicalTypeId,
      beforeReturnPrice,
      returnBackupPrice,
      fullReturnServiceListPrice,
      amount,
      medicalTypeName,
      previousDoctorName,
      hasImage,
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
