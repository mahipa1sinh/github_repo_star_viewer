import 'package:dio/dio.dart';
import 'dart:io';

extension DioErrorX on DioError {
  bool get isNoConnectionError {
    return this.type == DioErrorType.other && error is SocketException;
  }
}
