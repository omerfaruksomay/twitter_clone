// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericPagedResponse<T> _$GenericPagedResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GenericPagedResponse<T>(
      json['currentPage'] as int,
      json['perPage'] as int,
      (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      json['totalCount'] as int,
    );

Map<String, dynamic> _$GenericPagedResponseToJson<T>(
  GenericPagedResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'perPage': instance.perPage,
      'totalCount': instance.totalCount,
      'data': instance.data.map(toJsonT).toList(),
    };
