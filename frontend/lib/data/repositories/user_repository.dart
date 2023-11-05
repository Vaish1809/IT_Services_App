import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/core/api.dart';
import 'package:orinova_it_servicesapp/data/models/user_model.dart';

class UserRepository {
  final _api = Api();
  Future<user_model> createAccount({
    required String email,
    required String password,
  }) async {
    try {
      Response response = await _api.sendRequest.post("/user/createAccount",
          data: jsonEncode({"email": email, "password": password}));
      ApiResponse apiResponse = ApiResponse.fromResponse(response);
      if (!apiResponse.succcess) {
        throw apiResponse.message.toString();
      }
      return user_model.fromJson(apiResponse.data);
    } catch (err) {
      rethrow;
    }
  }
   Future<user_model> signIn({
    required String email,
    required String password,
  }) async {
    try {
      Response response = await _api.sendRequest.post("/user/signIn",
          data: jsonEncode({"email": email, "password": password}));
      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.succcess) {
        throw apiResponse.message.toString();
      }

      return user_model.fromJson(apiResponse.data);
    } catch (err) {
      rethrow;
    }
  }
}
