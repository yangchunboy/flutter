library request;
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:app/config/ConfigData.dart';
import 'dart:convert';

part './request/request.dart';
part './request/interceptors.dart';


Dio http = HttpRequest.getInstance();