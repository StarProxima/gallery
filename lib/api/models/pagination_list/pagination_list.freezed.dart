// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationList<T> _$PaginationListFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationList<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationList<T> {
  int get totalItems => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  int get countOfPages => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationListCopyWith<T, PaginationList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationListCopyWith<T, $Res> {
  factory $PaginationListCopyWith(
          PaginationList<T> value, $Res Function(PaginationList<T>) then) =
      _$PaginationListCopyWithImpl<T, $Res, PaginationList<T>>;
  @useResult
  $Res call({int totalItems, int itemsPerPage, int countOfPages, List<T> data});
}

/// @nodoc
class _$PaginationListCopyWithImpl<T, $Res, $Val extends PaginationList<T>>
    implements $PaginationListCopyWith<T, $Res> {
  _$PaginationListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? itemsPerPage = null,
    Object? countOfPages = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      countOfPages: null == countOfPages
          ? _value.countOfPages
          : countOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationListCopyWith<T, $Res>
    implements $PaginationListCopyWith<T, $Res> {
  factory _$$_PaginationListCopyWith(_$_PaginationList<T> value,
          $Res Function(_$_PaginationList<T>) then) =
      __$$_PaginationListCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int totalItems, int itemsPerPage, int countOfPages, List<T> data});
}

/// @nodoc
class __$$_PaginationListCopyWithImpl<T, $Res>
    extends _$PaginationListCopyWithImpl<T, $Res, _$_PaginationList<T>>
    implements _$$_PaginationListCopyWith<T, $Res> {
  __$$_PaginationListCopyWithImpl(
      _$_PaginationList<T> _value, $Res Function(_$_PaginationList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? itemsPerPage = null,
    Object? countOfPages = null,
    Object? data = null,
  }) {
    return _then(_$_PaginationList<T>(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      countOfPages: null == countOfPages
          ? _value.countOfPages
          : countOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_PaginationList<T> implements _PaginationList<T> {
  _$_PaginationList(
      {required this.totalItems,
      required this.itemsPerPage,
      required this.countOfPages,
      required final List<T> data})
      : _data = data;

  factory _$_PaginationList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PaginationListFromJson(json, fromJsonT);

  @override
  final int totalItems;
  @override
  final int itemsPerPage;
  @override
  final int countOfPages;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PaginationList<$T>(totalItems: $totalItems, itemsPerPage: $itemsPerPage, countOfPages: $countOfPages, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationList<T> &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.countOfPages, countOfPages) ||
                other.countOfPages == countOfPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalItems, itemsPerPage,
      countOfPages, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationListCopyWith<T, _$_PaginationList<T>> get copyWith =>
      __$$_PaginationListCopyWithImpl<T, _$_PaginationList<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PaginationListToJson<T>(this, toJsonT);
  }
}

abstract class _PaginationList<T> implements PaginationList<T> {
  factory _PaginationList(
      {required final int totalItems,
      required final int itemsPerPage,
      required final int countOfPages,
      required final List<T> data}) = _$_PaginationList<T>;

  factory _PaginationList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PaginationList<T>.fromJson;

  @override
  int get totalItems;
  @override
  int get itemsPerPage;
  @override
  int get countOfPages;
  @override
  List<T> get data;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationListCopyWith<T, _$_PaginationList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
