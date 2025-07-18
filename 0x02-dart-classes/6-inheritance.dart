class Password {
  String? password;

  Password({this.password});

  bool isValid() {
    if (password == null) return false;
    return password!.length >= 8;
  }

  @override
  String toString() {
    return 'Password: ${password ?? ""}';
  }
}
