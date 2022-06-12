import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_padrao_viper/modules/home/entity/rest_response_model.dart';
import 'package:flutter_padrao_viper/modules/home/iterator/place_holder_iterator.dart';

class PlaceHolderPresenter with ChangeNotifier {
  PlaceHolderIterator _placeHolderIterator = PlaceHolderIterator();

  Future<RestResponseModel> fetchResponse() async {
    RestResponseModel restResponseModel =
    await _placeHolderIterator.FetchPlaceHolderRestData();
    return restResponseModel;
  }
}