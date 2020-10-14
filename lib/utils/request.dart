library request;
import 'dart:io';

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:app/config/ConfigData.dart';
import 'package:app/utils/utils.dart';

part './request/request.dart';
part './request/interceptors.dart';


Dio http = HttpRequest.getInstance();