// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      invoiceNo: json['InvoiceNo'],
      patientId: json['PatientID'],
      invoiceDate: json['InvoiceDate'] as String?,
      dueDate: json['DueDate'] as String?,
      invoiceStatusId: json['InvoiceStatusId'],
      labStatusId: json['LabStatusId'],
      totalAmount: json['TotalAmount'],
      totalDiscount: json['TotalDiscount'],
      itemDiscount: json['ItemDiscount'],
      isRefunded: json['IsRefunded'] as bool?,
      isReturn: json['IsReturn'] as bool?,
      modifiedBy: json['ModifiedBy'],
      isBothSideDiscount: json['IsBothSideDiscount'] as bool?,
      discountPercentage: json['DiscountPercentage'],
      discountNote: json['DiscountNote'],
      patientAdmission: json['PatientAdmission'],
      isAnyCompleteItem: json['IsAnyCompleteItem'] as bool?,
      advance: json['Advance'],
      vat: json['Vat'],
      isVatPaid: json['IsVatPaid'] as bool?,
      invoicePayments: json['InvoicePayments'] as List<dynamic>?,
      patient: json['Patient'] == null
          ? null
          : Patient.fromJson(json['Patient'] as Map<String, dynamic>),
      user: json['User'] == null
          ? null
          : User.fromJson(json['User'] as Map<String, dynamic>),
      modifiedByUser: json['ModifiedByUser'],
      labStatus: json['LabStatus'],
      invoiceStatus: json['InvoiceStatus'],
      patientServices: (json['PatientServices'] as List<dynamic>?)
          ?.map((e) => PatientServices.fromJson(e as Map<String, dynamic>))
          .toList(),
      refunds: json['Refunds'] as List<dynamic>?,
      patientInvoiceShadows: json['PatientInvoiceShadows'] as List<dynamic>?,
      amount: json['Amount'],
      medicalTypeName: json['MedicalTypeName'],
      isDueCollection: json['IsDueCollection'] as bool?,
      branchId: json['BranchId'],
      branch: json['Branch'],
      tenantId: json['TenantId'],
      tenant: json['Tenant'] == null
          ? null
          : Tenant.fromJson(json['Tenant'] as Map<String, dynamic>),
      id: json['Id'],
      active: json['Active'] as bool?,
      userId: json['UserId'],
      hasErrors: json['HasErrors'] as bool?,
      errorCount: json['ErrorCount'],
      noErrors: json['NoErrors'] as bool?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'InvoiceNo': instance.invoiceNo,
      'PatientID': instance.patientId,
      'InvoiceDate': instance.invoiceDate,
      'DueDate': instance.dueDate,
      'InvoiceStatusId': instance.invoiceStatusId,
      'LabStatusId': instance.labStatusId,
      'TotalAmount': instance.totalAmount,
      'TotalDiscount': instance.totalDiscount,
      'ItemDiscount': instance.itemDiscount,
      'IsRefunded': instance.isRefunded,
      'IsReturn': instance.isReturn,
      'ModifiedBy': instance.modifiedBy,
      'IsBothSideDiscount': instance.isBothSideDiscount,
      'DiscountPercentage': instance.discountPercentage,
      'DiscountNote': instance.discountNote,
      'PatientAdmission': instance.patientAdmission,
      'IsAnyCompleteItem': instance.isAnyCompleteItem,
      'Advance': instance.advance,
      'Vat': instance.vat,
      'IsVatPaid': instance.isVatPaid,
      'InvoicePayments': instance.invoicePayments,
      'Patient': instance.patient,
      'User': instance.user,
      'ModifiedByUser': instance.modifiedByUser,
      'LabStatus': instance.labStatus,
      'InvoiceStatus': instance.invoiceStatus,
      'PatientServices': instance.patientServices,
      'Refunds': instance.refunds,
      'PatientInvoiceShadows': instance.patientInvoiceShadows,
      'Amount': instance.amount,
      'MedicalTypeName': instance.medicalTypeName,
      'IsDueCollection': instance.isDueCollection,
      'BranchId': instance.branchId,
      'Branch': instance.branch,
      'TenantId': instance.tenantId,
      'Tenant': instance.tenant,
      'Id': instance.id,
      'Active': instance.active,
      'UserId': instance.userId,
      'HasErrors': instance.hasErrors,
      'ErrorCount': instance.errorCount,
      'NoErrors': instance.noErrors,
    };
