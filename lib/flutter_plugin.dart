import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPlugin {
  static const MethodChannel _channel = const MethodChannel('flutter_plugin');

  static Future<void> debug(String message) async {
    await _channel.invokeMethod('debug', {
      'message': message,
    });
  }

  static Future<void> error(String message) async {
    await _channel.invokeMethod('error', {
      'message': message,
    });
  }
}
