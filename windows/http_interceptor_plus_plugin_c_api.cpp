#include "include/http_interceptor_plus/http_interceptor_plus_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "http_interceptor_plus_plugin.h"

void HttpInterceptorPlusPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  http_interceptor_plus::HttpInterceptorPlusPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
