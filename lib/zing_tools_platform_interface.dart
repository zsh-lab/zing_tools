import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'zing_tools_method_channel.dart';

abstract class ZingToolsPlatform extends PlatformInterface {
  /// Constructs a ZingToolsPlatform.
  ZingToolsPlatform() : super(token: _token);

  static final Object _token = Object();

  static ZingToolsPlatform _instance = MethodChannelZingTools();

  /// The default instance of [ZingToolsPlatform] to use.
  ///
  /// Defaults to [MethodChannelZingTools].
  static ZingToolsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ZingToolsPlatform] when
  /// they register themselves.
  static set instance(ZingToolsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
