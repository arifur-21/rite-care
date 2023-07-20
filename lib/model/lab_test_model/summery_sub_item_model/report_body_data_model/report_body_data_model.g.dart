// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_body_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportBodyDataModel _$ReportBodyDataModelFromJson(Map<String, dynamic> json) =>
    ReportBodyDataModel(
      templateList: (json['templateList'] as List<dynamic>?)
          ?.map((e) => TemplateList.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceItem: json['ServiceItem'] == null
          ? null
          : ServiceItem.fromJson(json['ServiceItem'] as Map<String, dynamic>),
      invoiceStatusUpdate: json['InvoiceStatusUpdate'] as bool?,
      invoiceId: json['InvoiceID'] as int?,
      isNewResult: json['IsNewResult'] as bool?,
      reagentExpenseCategoryId: json['reagentExpenseCategoryId'] as int?,
    );

Map<String, dynamic> _$ReportBodyDataModelToJson(
        ReportBodyDataModel instance) =>
    <String, dynamic>{
      'templateList': instance.templateList,
      'ServiceItem': instance.serviceItem,
      'InvoiceStatusUpdate': instance.invoiceStatusUpdate,
      'InvoiceID': instance.invoiceId,
      'IsNewResult': instance.isNewResult,
      'reagentExpenseCategoryId': instance.reagentExpenseCategoryId,
    };
