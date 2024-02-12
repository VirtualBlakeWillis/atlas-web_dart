class User {
  String? name;
  int? age;
  double? height;
  int? id;

  User({this.name, this.age, this.height, this.id});

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
    return 'User(id : $id , name: $name, age: $age, height: $height)';
  }
}