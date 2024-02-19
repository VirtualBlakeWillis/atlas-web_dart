import '6-password.dart';

class User extends Password{
  String? name;
  int? age;
  double? height;
  int? id;

  User({this.name, this.age, this.height, this.id, String user_password = ""}) : super(password: user_password);

  String get user_password => this.password;
  set user_password(String newPassword) => this.password = newPassword;
  toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password']
    );
  }

  toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}