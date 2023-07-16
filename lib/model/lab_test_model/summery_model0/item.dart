import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'patient/patient.dart';

import 'patient_services/patient_services.dart';
import 'tenant.dart';

import 'user/user.dart';

part 'item.g.dart';

@JsonSerializable()
class Item extends Equatable {
  @JsonKey(name: 'InvoiceNo')
  final dynamic invoiceNo;
  @JsonKey(name: 'PatientID')
  final dynamic patientId;
  @JsonKey(name: 'InvoiceDate')
  late String? invoiceDate;
  @JsonKey(name: 'DueDate')
  late String? dueDate;
  @JsonKey(name: 'InvoiceStatusId')
  final dynamic invoiceStatusId;
  @JsonKey(name: 'LabStatusId')
  late dynamic labStatusId;
  @JsonKey(name: 'TotalAmount')
  final dynamic totalAmount;
  @JsonKey(name: 'TotalDiscount')
  final dynamic totalDiscount;
  @JsonKey(name: 'ItemDiscount')
  final dynamic itemDiscount;
  @JsonKey(name: 'IsRefunded')
  final bool? isRefunded;
  @JsonKey(name: 'IsReturn')
  final bool? isReturn;
  @JsonKey(name: 'ModifiedBy')
  final dynamic modifiedBy;
  @JsonKey(name: 'IsBothSideDiscount')
  final bool? isBothSideDiscount;
  @JsonKey(name: 'DiscountPercentage')
  final dynamic discountPercentage;
  @JsonKey(name: 'DiscountNote')
  final dynamic discountNote;
  @JsonKey(name: 'PatientAdmission')
  final dynamic patientAdmission;
  @JsonKey(name: 'IsAnyCompleteItem')
  final bool? isAnyCompleteItem;
  @JsonKey(name: 'Advance')
  final dynamic advance;
  @JsonKey(name: 'Vat')
  final dynamic vat;
  @JsonKey(name: 'IsVatPaid')
  final bool? isVatPaid;
  @JsonKey(name: 'InvoicePayments')
  final List<dynamic>? invoicePayments;
  @JsonKey(name: 'Patient')
  final Patient? patient;
  @JsonKey(name: 'User')
  final User? user;
  @JsonKey(name: 'ModifiedByUser')
  final dynamic modifiedByUser;
  @JsonKey(name: 'LabStatus')
  final dynamic labStatus;
  @JsonKey(name: 'InvoiceStatus')
  final dynamic invoiceStatus;
  @JsonKey(name: 'PatientServices')
  final List<PatientServices>? patientServices;
  @JsonKey(name: 'Refunds')
  final List<dynamic>? refunds;
  @JsonKey(name: 'PatientInvoiceShadows')
  final List<dynamic>? patientInvoiceShadows;
  @JsonKey(name: 'Amount')
  final dynamic amount;
  @JsonKey(name: 'MedicalTypeName')
  final dynamic medicalTypeName;
  @JsonKey(name: 'IsDueCollection')
  final bool? isDueCollection;
  @JsonKey(name: 'BranchId')
  final dynamic branchId;
  @JsonKey(name: 'Branch')
  final dynamic branch;
  @JsonKey(name: 'TenantId')
  final dynamic tenantId;
  @JsonKey(name: 'Tenant')
  final Tenant? tenant;
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

   Item({
    this.invoiceNo,
    this.patientId,
    this.invoiceDate,
    this.dueDate,
    this.invoiceStatusId,
    this.labStatusId,
    this.totalAmount,
    this.totalDiscount,
    this.itemDiscount,
    this.isRefunded,
    this.isReturn,
    this.modifiedBy,
    this.isBothSideDiscount,
    this.discountPercentage,
    this.discountNote,
    this.patientAdmission,
    this.isAnyCompleteItem,
    this.advance,
    this.vat,
    this.isVatPaid,
    this.invoicePayments,
    this.patient,
    this.user,
    this.modifiedByUser,
    this.labStatus,
    this.invoiceStatus,
    this.patientServices,
    this.refunds,
    this.patientInvoiceShadows,
    this.amount,
    this.medicalTypeName,
    this.isDueCollection,
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
    dynamic invoiceNo,
    dynamic patientId,
    String? invoiceDate,
    String? dueDate,
    dynamic invoiceStatusId,
    dynamic labStatusId,
    dynamic totalAmount,
    dynamic totalDiscount,
    dynamic itemDiscount,
    bool? isRefunded,
    bool? isReturn,
    dynamic modifiedBy,
    bool? isBothSideDiscount,
    dynamic discountPercentage,
    dynamic discountNote,
    dynamic patientAdmission,
    bool? isAnyCompleteItem,
    dynamic advance,
    dynamic vat,
    bool? isVatPaid,
    List<dynamic>? invoicePayments,
    Patient? patient,
    User? user,
    dynamic modifiedByUser,
    dynamic labStatus,
    dynamic invoiceStatus,
    List<PatientServices>? patientServices,
    List<dynamic>? refunds,
    List<dynamic>? patientInvoiceShadows,
    dynamic amount,
    dynamic medicalTypeName,
    bool? isDueCollection,
    dynamic branchId,
    dynamic branch,
    dynamic tenantId,
    Tenant? tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return Item(
      invoiceNo: invoiceNo ?? this.invoiceNo,
      patientId: patientId ?? this.patientId,
      invoiceDate: invoiceDate ?? this.invoiceDate,
      dueDate: dueDate ?? this.dueDate,
      invoiceStatusId: invoiceStatusId ?? this.invoiceStatusId,
      labStatusId: labStatusId ?? this.labStatusId,
      totalAmount: totalAmount ?? this.totalAmount,
      totalDiscount: totalDiscount ?? this.totalDiscount,
      itemDiscount: itemDiscount ?? this.itemDiscount,
      isRefunded: isRefunded ?? this.isRefunded,
      isReturn: isReturn ?? this.isReturn,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      isBothSideDiscount: isBothSideDiscount ?? this.isBothSideDiscount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountNote: discountNote ?? this.discountNote,
      patientAdmission: patientAdmission ?? this.patientAdmission,
      isAnyCompleteItem: isAnyCompleteItem ?? this.isAnyCompleteItem,
      advance: advance ?? this.advance,
      vat: vat ?? this.vat,
      isVatPaid: isVatPaid ?? this.isVatPaid,
      invoicePayments: invoicePayments ?? this.invoicePayments,
      patient: patient ?? this.patient,
      user: user ?? this.user,
      modifiedByUser: modifiedByUser ?? this.modifiedByUser,
      labStatus: labStatus ?? this.labStatus,
      invoiceStatus: invoiceStatus ?? this.invoiceStatus,
      patientServices: patientServices ?? this.patientServices,
      refunds: refunds ?? this.refunds,
      patientInvoiceShadows:
          patientInvoiceShadows ?? this.patientInvoiceShadows,
      amount: amount ?? this.amount,
      medicalTypeName: medicalTypeName ?? this.medicalTypeName,
      isDueCollection: isDueCollection ?? this.isDueCollection,
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
      invoiceNo,
      patientId,
      invoiceDate,
      dueDate,
      invoiceStatusId,
      labStatusId,
      totalAmount,
      totalDiscount,
      itemDiscount,
      isRefunded,
      isReturn,
      modifiedBy,
      isBothSideDiscount,
      discountPercentage,
      discountNote,
      patientAdmission,
      isAnyCompleteItem,
      advance,
      vat,
      isVatPaid,
      invoicePayments,
      patient,
      user,
      modifiedByUser,
      labStatus,
      invoiceStatus,
      patientServices,
      refunds,
      patientInvoiceShadows,
      amount,
      medicalTypeName,
      isDueCollection,
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
