import 'package:flutter_padrao_viper/modules/home/data/rest_service.dart';
import 'package:flutter_padrao_viper/modules/home/entity/rest_response_model.dart';

class PlaceHolderIterator {

  RestService _restService = RestService();

  Future<RestResponseModel> FetchPlaceHolderRestData() async {
    final response = await _restService.get("/todos/1");
    return RestResponseModel.fromJson(response);
  }
}