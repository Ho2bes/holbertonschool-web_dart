class Password {
  String? _password;

  Password({required String? password}) : _password = password;

  String? get password => _password;

  set password(String? value) {
    _password = value;
  }

  bool isValid() {
    if (_password == null) return false;

    final hasUppercase = _password!.contains(RegExp(r'[A-Z]'));
    final hasLowercase = _password!.contains(RegExp(r'[a-z]'));
    final hasNumber = _password!.contains(RegExp(r'\d'));
    final lengthOk = _password!.length >= 8 && _password!.length <= 16;

    return hasUppercase && hasLowercase && hasNumber && lengthOk;
  }

  @override
  String toString() {
    return 'Your Password is: ${_password ?? ""}';
  }
}
