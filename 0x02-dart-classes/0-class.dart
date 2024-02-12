class User {
  String? name;

  User(String name) {
    this.name = name;
  }
  void showName() {
    print('Hello $name');
  }
}