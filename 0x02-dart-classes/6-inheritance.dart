import '6-password.dart';

class User {
  int? id;
  String? name;
  int? age;
  double? height;
  Password? user_password;

  User({this.id, this.name, this.age, this.height, required String? user_password}) {
    this.user_password = Password(password: user_password);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id ?? 0,
      'name': name ?? '',
      'age': age ?? 0,
      'height': height ?? 0.0,
    };
  }

  static User fromJson(Map<dynamic, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      height: json['height'],
      user_password: json['user_password'],
    );
  }

  @override
  String toString() {
    final isValidPassword = user_password?.isValid() ?? false;
    return 'User(id : ${id ?? 0} ,name: ${name ?? ''}, age: ${age ?? 0}, height: ${height ?? 0.0}, Password: $isValidPassword)';
  }
}
