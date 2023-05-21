enum PhotoStatus {
  none,
  newPhoto,
  popularPhoto;

  bool get isNone => this == PhotoStatus.none;

  bool get isNewPhoto => this == PhotoStatus.newPhoto;
  bool get isPopularPhoto => this == PhotoStatus.popularPhoto;
}
