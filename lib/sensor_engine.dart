import 'dart:async';

import 'package:flutter/services.dart';

class SensorEngine {
  static const MethodChannel _channel =
      const MethodChannel('sensor_engine');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
