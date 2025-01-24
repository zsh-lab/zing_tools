class Validator {
  /// 验证电子邮件格式
  static bool isValidEmail(String email) {
    final RegExp emailRegExp =
        RegExp(r'^([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$');
    return emailRegExp.hasMatch(email);
  }
}
