import 'package:flutter_test/flutter_test.dart';
import 'package:http_interceptor_plus/http_interceptor_plus_platform_interface.dart';
import 'package:http_interceptor_plus/http_interceptor_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHttpInterceptorPlusPlatform
    with MockPlatformInterfaceMixin
    implements HttpInterceptorPlusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HttpInterceptorPlusPlatform initialPlatform =
      HttpInterceptorPlusPlatform.instance;

  test('$MethodChannelHttpInterceptorPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHttpInterceptorPlus>());
  });

  test('getPlatformVersion', () async {
    //  HttpInterceptorPlus httpInterceptorPlusPlugin = HttpInterceptorPlus();
    MockHttpInterceptorPlusPlatform fakePlatform =
        MockHttpInterceptorPlusPlatform();
    HttpInterceptorPlusPlatform.instance = fakePlatform;

    // expect(await httpInterceptorPlusPlugin.getPlatformVersion(), '42');
  });
}
