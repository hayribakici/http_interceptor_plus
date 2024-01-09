import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'http_interceptor_plus_method_channel.dart';

abstract class HttpInterceptorPlusPlatform extends PlatformInterface {
  /// Constructs a HttpInterceptorPlusPlatform.
  HttpInterceptorPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static HttpInterceptorPlusPlatform _instance =
      MethodChannelHttpInterceptorPlus();

  /// The default instance of [HttpInterceptorPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelHttpInterceptorPlus].
  static HttpInterceptorPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HttpInterceptorPlusPlatform] when
  /// they register themselves.
  static set instance(HttpInterceptorPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
