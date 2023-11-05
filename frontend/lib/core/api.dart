import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String BASE_URL = "http://192.168.0.4:5000/api";
const Map<String, dynamic> DEFAULT_HEADERS = {
  "Content-Type": "application/json"
};

class Api {
  final Dio _dio = Dio();
  Api() {
    _dio.options.headers = DEFAULT_HEADERS;
    _dio.options.baseUrl = BASE_URL;
    _dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
  }
  Dio get sendRequest => _dio;
}

class ApiResponse {
  //the res
  bool succcess;
  dynamic data;
  String? message;
  ApiResponse({required this.succcess, this.data, this.message});
  factory ApiResponse.fromResponse(Response response) {
    final data = response.data as Map<String, dynamic>;
    return ApiResponse(
        succcess: data["success"],
        message: data["message"] ?? "Unexpected error",
        data: data["data"]);
  }
}
