import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/media_object_item_dto/media_object_item_dto.dart';

part 'media_api.g.dart';

@RestApi()
abstract class MediaApi {
  factory MediaApi(Dio dio) = _MediaApi;

  @GET("/media_objects/{id}")
  Future<MediaObjectItemDto> getMediaItem(@Path("id") int id);
}
