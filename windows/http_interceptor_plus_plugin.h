#ifndef FLUTTER_PLUGIN_HTTP_INTERCEPTOR_PLUS_PLUGIN_H_
#define FLUTTER_PLUGIN_HTTP_INTERCEPTOR_PLUS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace http_interceptor_plus {

class HttpInterceptorPlusPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  HttpInterceptorPlusPlugin();

  virtual ~HttpInterceptorPlusPlugin();

  // Disallow copy and assign.
  HttpInterceptorPlusPlugin(const HttpInterceptorPlusPlugin&) = delete;
  HttpInterceptorPlusPlugin& operator=(const HttpInterceptorPlusPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace http_interceptor_plus

#endif  // FLUTTER_PLUGIN_HTTP_INTERCEPTOR_PLUS_PLUGIN_H_
