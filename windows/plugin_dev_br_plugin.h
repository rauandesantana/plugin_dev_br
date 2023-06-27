#ifndef FLUTTER_PLUGIN_PLUGIN_DEV_BR_PLUGIN_H_
#define FLUTTER_PLUGIN_PLUGIN_DEV_BR_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace plugin_dev_br {

class PluginDevBrPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PluginDevBrPlugin();

  virtual ~PluginDevBrPlugin();

  // Disallow copy and assign.
  PluginDevBrPlugin(const PluginDevBrPlugin&) = delete;
  PluginDevBrPlugin& operator=(const PluginDevBrPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace plugin_dev_br

#endif  // FLUTTER_PLUGIN_PLUGIN_DEV_BR_PLUGIN_H_
