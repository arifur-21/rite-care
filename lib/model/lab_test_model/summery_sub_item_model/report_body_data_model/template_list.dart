import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'template_list.g.dart';

@JsonSerializable()
class TemplateList extends Equatable {
  @JsonKey(name: 'ItemId')
  final dynamic itemId;
  @JsonKey(name: 'HeaderName')
  final dynamic headerName;
  @JsonKey(name: 'HeaderNote')
  final dynamic headerNote;
  @JsonKey(name: 'Name')
  final dynamic name;
  @JsonKey(name: 'IsResultDropDown')
  final bool? isResultDropDown;
  @JsonKey(name: 'Result')
  final dynamic result;
  @JsonKey(name: 'ItemWiseValueId')
  final dynamic itemWiseValueId;
  @JsonKey(name: 'IsUnitDropDown')
  final bool? isUnitDropDown;
  @JsonKey(name: 'UnitId')
  final dynamic unitId;
  @JsonKey(name: 'OpinionId')
  final dynamic opinionId;
  @JsonKey(name: 'Comment')
  final dynamic comment;
  @JsonKey(name: 'ReferanceValue')
  final dynamic referanceValue;
  @JsonKey(name: 'Techonology')
  final dynamic techonology;
  @JsonKey(name: 'MachineUnitName')
  final dynamic machineUnitName;
  @JsonKey(name: 'CreatedDate')
  final dynamic createdDate;
  @JsonKey(name: 'OpinionText')
  final dynamic opinionText;
  @JsonKey(name: 'IsOpinionDropDown')
  final bool? isOpinionDropDown;
  @JsonKey(name: 'MachineId')
  final dynamic machineId;
  @JsonKey(name: 'SerialNo')
  final dynamic serialNo;
  @JsonKey(name: 'Machine')
  final dynamic machine;
  @JsonKey(name: 'Opinion')
  final dynamic opinion;
  @JsonKey(name: 'ItemWiseValue')
  final dynamic itemWiseValue;
  @JsonKey(name: 'LabTemplateDesignComment')
  final dynamic labTemplateDesignComment;
  @JsonKey(name: 'IsComment')
  final bool? isComment;
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
  final bool? selectedIcon;
  final bool? activePosition;
  @JsonKey(name: 'IsBold')
  final bool? isBold;
  @JsonKey(name: 'BoldImage')
  final dynamic boldImage;
  @JsonKey(name: 'IsReferanceColumn')
  final bool? isReferanceColumn;
  @JsonKey(name: 'IsTechonologyColumn')
  final bool? isTechonologyColumn;
  @JsonKey(name: 'PatientServiceId')
  final dynamic patientServiceId;

  const TemplateList({
    this.itemId,
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
    this.noErrors,
    this.selectedIcon,
    this.activePosition,
    this.isBold,
    this.boldImage,
    this.isReferanceColumn,
    this.isTechonologyColumn,
    this.patientServiceId,
  });

  factory TemplateList.fromJson(Map<String, dynamic> json) {
    return _$TemplateListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TemplateListToJson(this);

  TemplateList copyWith({
    dynamic itemId,
    dynamic headerName,
    dynamic headerNote,
    dynamic name,
    bool? isResultDropDown,
    dynamic result,
    dynamic itemWiseValueId,
    bool? isUnitDropDown,
    dynamic unitId,
    dynamic opinionId,
    dynamic comment,
    dynamic referanceValue,
    dynamic techonology,
    dynamic machineUnitName,
    dynamic createdDate,
    dynamic opinionText,
    bool? isOpinionDropDown,
    dynamic machineId,
    dynamic serialNo,
    dynamic machine,
    dynamic opinion,
    dynamic itemWiseValue,
    dynamic labTemplateDesignComment,
    bool? isComment,
    dynamic tenantId,
    dynamic tenant,
    dynamic id,
    bool? active,
    dynamic userId,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
    bool? selectedIcon,
    bool? activePosition,
    bool? isBold,
    dynamic boldImage,
    bool? isReferanceColumn,
    bool? isTechonologyColumn,
    dynamic patientServiceId,
  }) {
    return TemplateList(
      itemId: itemId ?? this.itemId,
      headerName: headerName ?? this.headerName,
      headerNote: headerNote ?? this.headerNote,
      name: name ?? this.name,
      isResultDropDown: isResultDropDown ?? this.isResultDropDown,
      result: result ?? this.result,
      itemWiseValueId: itemWiseValueId ?? this.itemWiseValueId,
      isUnitDropDown: isUnitDropDown ?? this.isUnitDropDown,
      unitId: unitId ?? this.unitId,
      opinionId: opinionId ?? this.opinionId,
      comment: comment ?? this.comment,
      referanceValue: referanceValue ?? this.referanceValue,
      techonology: techonology ?? this.techonology,
      machineUnitName: machineUnitName ?? this.machineUnitName,
      createdDate: createdDate ?? this.createdDate,
      opinionText: opinionText ?? this.opinionText,
      isOpinionDropDown: isOpinionDropDown ?? this.isOpinionDropDown,
      machineId: machineId ?? this.machineId,
      serialNo: serialNo ?? this.serialNo,
      machine: machine ?? this.machine,
      opinion: opinion ?? this.opinion,
      itemWiseValue: itemWiseValue ?? this.itemWiseValue,
      labTemplateDesignComment:
          labTemplateDesignComment ?? this.labTemplateDesignComment,
      isComment: isComment ?? this.isComment,
      tenantId: tenantId ?? this.tenantId,
      tenant: tenant ?? this.tenant,
      id: id ?? this.id,
      active: active ?? this.active,
      userId: userId ?? this.userId,
      hasErrors: hasErrors ?? this.hasErrors,
      errorCount: errorCount ?? this.errorCount,
      noErrors: noErrors ?? this.noErrors,
      selectedIcon: selectedIcon ?? this.selectedIcon,
      activePosition: activePosition ?? this.activePosition,
      isBold: isBold ?? this.isBold,
      boldImage: boldImage ?? this.boldImage,
      isReferanceColumn: isReferanceColumn ?? this.isReferanceColumn,
      isTechonologyColumn: isTechonologyColumn ?? this.isTechonologyColumn,
      patientServiceId: patientServiceId ?? this.patientServiceId,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      itemId,
      headerName,
      headerNote,
      name,
      isResultDropDown,
      result,
      itemWiseValueId,
      isUnitDropDown,
      unitId,
      opinionId,
      comment,
      referanceValue,
      techonology,
      machineUnitName,
      createdDate,
      opinionText,
      isOpinionDropDown,
      machineId,
      serialNo,
      machine,
      opinion,
      itemWiseValue,
      labTemplateDesignComment,
      isComment,
      tenantId,
      tenant,
      id,
      active,
      userId,
      hasErrors,
      errorCount,
      noErrors,
      selectedIcon,
      activePosition,
      isBold,
      boldImage,
      isReferanceColumn,
      isTechonologyColumn,
      patientServiceId,
    ];
  }
}
