// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _PhotoApi implements PhotoApi {
  _PhotoApi(this._dio);

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PaginationList<PhotoGetPhotoGetMediaDto>> getPhotos({
    int? page,
    int? limit,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
      _setStreamType<PaginationList<PhotoGetPhotoGetMediaDto>>(
        Options(
          method: 'GET',
          headers: _headers,
          extra: _extra,
        )
            .compose(
              _dio.options,
              '/photos',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl),
      ),
    );
    final value = PaginationList<PhotoGetPhotoGetMediaDto>.fromJson(
      _result.data!,
      (json) => PhotoGetPhotoGetMediaDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<PhotoGetPhotoGetMediaDto> getPhoto(int id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
      _setStreamType<PhotoGetPhotoGetMediaDto>(
        Options(
          method: 'GET',
          headers: _headers,
          extra: _extra,
        )
            .compose(
              _dio.options,
              '/photos/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl),
      ),
    );
    final value = PhotoGetPhotoGetMediaDto.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
