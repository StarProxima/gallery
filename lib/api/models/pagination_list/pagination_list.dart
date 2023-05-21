import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_list.freezed.dart';
part 'pagination_list.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationList<T> with _$PaginationList<T> {
  factory PaginationList({
    required int totalItems,
    required int itemsPerPage,
    required int countOfPages,
    required List<T> data,
  }) = _PaginationList;

  factory PaginationList.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PaginationListFromJson(json, fromJsonT);
}

extension PaginationListX<T> on PaginationList<T> {
  PaginationList<R> map<R>(R Function(T) converter) {
    return PaginationList(
      totalItems: totalItems,
      itemsPerPage: itemsPerPage,
      countOfPages: countOfPages,
      data: data.map(converter).toList(),
    );
  }
}
