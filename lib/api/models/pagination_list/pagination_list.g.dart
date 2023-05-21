// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationList<T> _$$_PaginationListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PaginationList<T>(
      totalItems: json['totalItems'] as int,
      itemsPerPage: json['itemsPerPage'] as int,
      countOfPages: json['countOfPages'] as int,
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$_PaginationListToJson<T>(
  _$_PaginationList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'itemsPerPage': instance.itemsPerPage,
      'countOfPages': instance.countOfPages,
      'data': instance.data.map(toJsonT).toList(),
    };
