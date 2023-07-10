import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'service_item.dart';
import 'template_list.dart';

part 'report_body_data_model.g.dart';

@JsonSerializable()
class ReportBodyDataModel extends Equatable {
  final List<TemplateList>? templateList;
  @JsonKey(name: 'ServiceItem')
  final ServiceItem? serviceItem;
  @JsonKey(name: 'InvoiceStatusUpdate')
  final bool? invoiceStatusUpdate;
  @JsonKey(name: 'InvoiceID')
  final int? invoiceId;
  @JsonKey(name: 'IsNewResult')
  final bool? isNewResult;
  final int? reagentExpenseCategoryId;

  const ReportBodyDataModel({
    this.templateList,
    this.serviceItem,
    this.invoiceStatusUpdate,
    this.invoiceId,
    this.isNewResult,
    this.reagentExpenseCategoryId,
  });

  factory ReportBodyDataModel.fromJson(Map<String, dynamic> json) {
    return _$ReportBodyDataModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReportBodyDataModelToJson(this);

  ReportBodyDataModel copyWith({
    List<TemplateList>? templateList,
    ServiceItem? serviceItem,
    bool? invoiceStatusUpdate,
    int? invoiceId,
    bool? isNewResult,
    int? reagentExpenseCategoryId,
  }) {
    return ReportBodyDataModel(
      templateList: templateList ?? this.templateList,
      serviceItem: serviceItem ?? this.serviceItem,
      invoiceStatusUpdate: invoiceStatusUpdate ?? this.invoiceStatusUpdate,
      invoiceId: invoiceId ?? this.invoiceId,
      isNewResult: isNewResult ?? this.isNewResult,
      reagentExpenseCategoryId:
          reagentExpenseCategoryId ?? this.reagentExpenseCategoryId,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      templateList,
      serviceItem,
      invoiceStatusUpdate,
      invoiceId,
      isNewResult,
      reagentExpenseCategoryId,
    ];
  }
}
