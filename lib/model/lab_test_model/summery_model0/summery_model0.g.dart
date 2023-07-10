// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summery_model0.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummeryModel _$SummeryModelFromJson(Map<String, dynamic> json) => SummeryModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalItems: json['totalItems'],
    );

Map<String, dynamic> _$SummeryModelToJson(SummeryModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalItems': instance.totalItems,
    };
