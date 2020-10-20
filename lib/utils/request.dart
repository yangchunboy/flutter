library request;
import 'dart:io';

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:app/config/ConfigData.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';

part './request/request.dart';
part './request/interceptors.dart';



class Http {
  static Dio http = HttpRequest.getInstance();

  static Future<Map<String, dynamic>> get(String url, Map<String, dynamic> params) async{
    Response response = await http.get(url, queryParameters: params);
    Map jsonData =  json.decode(response.toString());
    if (jsonData['code'] == 1000) {
      return jsonData['data'];
    }
    return null;
  }


  static Future<Map<String, dynamic>> post(String url, dynamic params) async{
    Response response = await http.post(url, data: params);
    Map jsonData =  json.decode(response.toString());
    if (jsonData['code'] == 1000) {
      return jsonData['data'];
    }
    return null;
  }
}
