class StringUtils {
  /// 检查字符串是否为空
  static bool isNullOrEmpty(String? str) {
    return str == null || str.isEmpty;
  }

  /// 去除字符串两端的空白字符
  static String trim(String str) {
    return str.trim();
  }

  /// 将字符串转换为大写
  static String toUpperCase(String str) {
    return str.toUpperCase();
  }

  /// 将字符串转换为小写
  static String toLowerCase(String str) {
    return str.toLowerCase();
  }

  static int getVersion(String version) {
    return int.parse(version.replaceAll('.', ''));
  }
}
