class Password {
   String password = "";

  Password([this.password = ""]);

  bool isValid() {
    final hasUppercase = password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = password.contains(RegExp(r'[a-z]'));
    final lengthOk = password.length >= 8 && password.length <= 16;

    return hasUppercase && hasLowercase && lengthOk;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
