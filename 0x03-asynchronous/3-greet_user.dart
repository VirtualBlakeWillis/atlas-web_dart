import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    var user = await fetchUserData();
    Map userMap = jsonDecode(user);
    return('Hello ${userMap['username']}');
  }
  catch (err){
    return('error caught: ${err}');
  }
}

Future<String> loginUser() async {
  try {
    bool result = await checkCredentials();
    print('There is a user: ${result}');
    if (result) {
      return(await greetUser());
    }
    return ("Wrong credentials");
  } catch (err) {
    return('error caught: ${err}');

  }
}