
import 'package:viper_architecture_pattern/modules/home/data/rest_service.dart';
import 'package:viper_architecture_pattern/modules/home/entity/rest_response_model.dart';



class PlaceHolderIterator {

RestService _restService = RestService();

  Future<RestResponseModel> FetchPlaceHolderRestData() async {
    final response = await _restService.get("https://jsonplaceholder.typicode.com/todos/1");
    return RestResponseModel.fromJson(response);
  }
}
