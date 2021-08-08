
import 'dart:async';

import 'package:flutter/services.dart';

class HttpStatusApi {
  static const MethodChannel _channel =
      const MethodChannel('http_status_api');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
