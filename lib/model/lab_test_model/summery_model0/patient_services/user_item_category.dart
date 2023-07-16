import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_item_category.g.dart';

@JsonSerializable()
class UserItemCategory extends Equatable {
  @JsonKey(name: 'ItemCategoryId')
  final dynamic itemCategoryId;
  @JsonKey(name: 'UserId')
  final dynamic userId;
  @JsonKey(name: 'IsSelected')
  final bool? isSelected;
  @JsonKey(name: 'CreatedDate')
  final dynamic createdDate;
  @JsonKey(name: 'User')
  final dynamic user;
  @JsonKey(name: 'ItemCategory')
  final dynamic itemCategory;
  @JsonKey(name: 'TenantId')
  final dynamic tenantId;
  @JsonKey(name: 'Tenant')
  final dynamic tenant;
  @JsonKey(name: 'Id')
  final dynamic id;
  @JsonKey(name: 'Active')
  final bool? active;
  @JsonKey(name: 'HasErrors')
  final bool? hasErrors;
  @JsonKey(name: 'ErrorCount')
  final dynamic errorCount;
  @JsonKey(name: 'NoErrors')
  final bool? noErrors;

  const UserItemCategory({
    this.itemCategoryId,
    this.userId,
    this.isSelected,
    this.createdDate,
    this.user,
    this.itemCategory,
    this.tenantId,
    this.tenant,
    this.id,
    this.active,
    this.hasErrors,
    this.errorCount,
    this.noErrors,
  });

  factory UserItemCategory.fromJson(Map<String, dynamic> json) {
    return _$UserItemCategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserItemCategoryToJson(this);

  UserItemCategory copyWith({
    dynamic itemCategoryId,
    dynamic userId,
    bool? isSelected,
    dynamic createdDate,
    dynamic user,
    dynamic itemCategory,
    dynamic tenantId,
    dynamic tenant,
    dynamic id,
    bool? active,
    bool? hasErrors,
    dynamic errorCount,
    bool? noErrors,
  }) {
    return UserItemCategory(
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      userId: userId ?? this.userId,
      isSelected: isSelected ?? this.isSelected,
      createdDate: createdDate ?? this.createdDate,
      user: user ?? this.user,
      itemCategory: itemCategory ?? this.itemCategory,
      tenantId: tenantId ?? this.tenantId,
      tenant: tenant ?? this.tenant,
      id: id ?? this.id,
      active: active ?? this.active,
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
      itemCategoryId,
      userId,
      isSelected,
      createdDate,
      user,
      itemCategory,
      tenantId,
      tenant,
      id,
      active,
      hasErrors,
      errorCount,
      noErrors,
    ];
  }
}
