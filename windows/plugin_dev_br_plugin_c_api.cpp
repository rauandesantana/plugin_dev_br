#include "include/plugin_dev_br/plugin_dev_br_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "plugin_dev_br_plugin.h"

void PluginDevBrPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  plugin_dev_br::PluginDevBrPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
