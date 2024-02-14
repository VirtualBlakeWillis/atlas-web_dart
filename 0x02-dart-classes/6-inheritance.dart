import '6-password.dart';

class User extends Password{
  String? name;
  int? age;
  double? height;
  int? id;
  String user_password;

  User({this.name, this.age, this.height, this.id, this.user_password = ''}) : super(password: user_password);

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
    );
  }

  toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, password: ${password})';
  }
}