import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'http_interceptor_plus_platform_interface.dart';

/// An implementation of [HttpInterceptorPlusPlatform] that uses method channels.
class MethodChannelHttpInterceptorPlus extends HttpInterceptorPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('http_interceptor_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
