enum PhotoType {
  none,
  newPhoto,
  popularPhoto;

  bool get isNone => this == PhotoType.none;

  bool get isNewPhoto => this == PhotoType.newPhoto;
  bool get isPopularPhoto => this == PhotoType.popularPhoto;
}
