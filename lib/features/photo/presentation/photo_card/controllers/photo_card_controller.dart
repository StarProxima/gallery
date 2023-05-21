import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../utils/riverpod.dart';

final photoCardController =
    NotifierProvider<PhotoCardController, void>(PhotoCardController.new);

class PhotoCardController extends Controller {
  void goToDetailScreen() {
    print('Go to detail screen');
  }
}
