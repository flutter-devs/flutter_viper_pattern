import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:viper_architecture_pattern/modules/home/entity/rest_response_model.dart';
import 'package:viper_architecture_pattern/modules/home/iterator/place_holder_iterator.dart';

class PlaceHolderPresenter with ChangeNotifier {
  PlaceHolderIterator _placeHolderIterator = PlaceHolderIterator();

  Future<RestResponseModel> fetchResponse() async {
    RestResponseModel restResponseModel =
        await _placeHolderIterator.FetchPlaceHolderRestData();
    return restResponseModel;
  }
}
