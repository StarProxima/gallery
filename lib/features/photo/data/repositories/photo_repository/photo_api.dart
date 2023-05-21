import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../api/models/pagination_list/pagination_list.dart';
import '../../models/photo_get_photo_get_media_dto/photo_get_photo_get_media_dto.dart';

part 'photo_api.g.dart';

@RestApi()
abstract class PhotoApi {
  factory PhotoApi(Dio dio) = _PhotoApi;

  @GET("/photos")
  Future<PaginationList<PhotoGetPhotoGetMediaDto>> getPhotos({
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("new") bool? newPhoto,
    @Query("popular") bool? popular,
  });

  @GET("/photos/{id}")
  Future<PhotoGetPhotoGetMediaDto> getPhoto(@Path("id") int id);
}
