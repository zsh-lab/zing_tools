import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'zing_tools_platform_interface.dart';

/// An implementation of [ZingToolsPlatform] that uses method channels.
class MethodChannelZingTools extends ZingToolsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('zing_tools');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
