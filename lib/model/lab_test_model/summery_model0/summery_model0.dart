import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'summery_model0.g.dart';

@JsonSerializable()
class SummeryModel extends Equatable {
  final List<Item>? items;
  final dynamic totalItems;

  const SummeryModel({this.items, this.totalItems});

  factory SummeryModel.fromJson(Map<String, dynamic> json) {
    return _$SummeryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SummeryModelToJson(this);

  SummeryModel copyWith({
    List<Item>? items,
    dynamic totalItems,
  }) {
    return SummeryModel(
      items: items ?? this.items,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [items, totalItems];
}
