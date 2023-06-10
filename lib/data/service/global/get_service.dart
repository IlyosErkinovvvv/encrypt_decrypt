import 'package:dio/dio.dart';
import 'package:exchange_app/core/config/dio_config.dart';

class GetService {
  // GET SERVICE
  // ALL get method executed here
  static getData() async {
    dynamic response;
    try {
      // Go to DioUtils class to change settings of DIO
      // ignore: unused_local_variable
      Response res = await DioUtils.createRequest()
          .get('https://nbu.uz/uz/exchange-rates/json/');
    } on DioError catch (e) {
      // All types of execeptions are catched here
      if (e.type == DioErrorType.connectionTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        response = "timeout";
        return response;
      } else {
        response = "internet";
        return response;
      }
    }
    return response;
  }
}
