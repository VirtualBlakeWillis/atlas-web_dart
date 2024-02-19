## Overview
The project offers a comprehensive exploration of fundamental Dart programming concepts, focusing on key areas such as asynchronous programming, error handling, and API integration. Learners engage with asynchronous operations to understand how to manage delays effectively, a crucial skill in building responsive applications. Emphasis is placed on error handling strategies, teaching learners how to anticipate and handle errors gracefully to ensure application stability. Moreover, learners delve into the complexities of integrating external APIs, gaining practical experience in retrieving, processing, and utilizing data from remote sources. Through these core learning concepts, the project equips learners with essential skills to develop robust, efficient, and interconnected Dart applications.## Tasks
###  0. Users Count

Create a function `usersCount()` that prints the number of users.

* Do not push `0-util.dart`


```
achref@achref:~$ cat 0-main.dart
import '0-users_count.dart';

main() async {
  await usersCount();
}
achref@achref:~$ cat 0-util.dart

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

achref@achref:~$ dart 0-main.dart
19
achref@achref:~$

```
- File: `0-users_count.dart`
---
###  1. Get User ID

Create a function `getUserID()` that returns a future string representing the user’s ID.

* GitHub repository: `atlas-web_dart`
* Directory: `0x03-asynchronous`
* File: `1-get_user_id.dart`


```
achref@achref:~$ cat 1-main.dart
import '1-get_user_id.dart';


main() async {
  print(await getUserId());
}
achref@achref:~$ cat 1-util.dart
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

achref@achref:~$ dart 1-main.dart
7ee9a243-01ca-47c9-aa14-0149789764c3
achref@achref:~$

```
- File: `1-get_user_id.dart`
---
###  2. Get User

Sometimes fetching data from an api could produce unwanted results and may cause errors therefore it’s wise to handle these errors before they become a problem.

* GitHub repository: `atlas-web_dart`
* Directory: `0x03-asynchronous`
* File: `2-get_user.dart`


```
achref@achref:~$ cat 2-main.dart
import '2-get_user.dart';

main() async {
  getUser();
}
achref@achref:~$ cat 2-util.dart
Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

achref@achref:~$ dart 2-main.dart
error caught: Cannot locate user
achref@achref:~$

```
- File: `2-get_user.dart`
---
###  3. Greet User

Create a function `greetUser()` that returns a string as follows `Hello <username>` .

* If `checkCredentials()` returns `true` `loginUser()` should print `There is a user: true` and call `greetUser()` to return it’s value
* If `checkCredentials()` returns `false` `loginUser()` should print `There is a user: false` and return `Wrong credentials`


```
achref@achref:~$ cat 3-main.dart
import '3-greet_user.dart';

main() async {
  print(await loginUser());
}
achref@achref:~$ cat 3-util.dart
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

achref@achref:~$ dart 3-main.dart
There is a user: true
Hello admin
achref@achref:~$

```
- File: `3-greet_user.dart`
---
###  4. Calcul Total

Create a function `calculateTotal()` that calculates the total price of items for a certain user.

* Gets the user data by calling the provided function`fetchUserData()`
* Gets the user orders by calling the provided function `fetchUserOrders(id)` which accepts one argument : ID of the user
* Gets the products price by calling the provided function `fetchProductPrice(product)` which accepts one argument : product name
* Returns the total price of items
* Must use try-catch
* If an error occurs the function should return -1


```
achref@achref:~$ cat 4-main.dart
import '4-get_sum.dart';


main() async {
  print(await calculateTotal());
}

achref@achref:~$ cat 4-util.dart
import 'dart:convert';

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(products[product]));
  } catch (err) {
    return "error caught : $err";
  }
}
achref@achref:~$ dart 4-main.dart
30.3
achref@achref:~$

```
- File: `4-get_sum.dart`
---
###  5. Rick and Morty Characters

Create a file “pubspec.yaml” containing the following lines :

* You should use [Rick and Morty API](/rltoken/sw4eYN8hy3A4hwV3gOWpRg "Rick and Morty API") to get the data required
* Must use try-catch
* If an error occurs the function should return `error caught: <error>`


```
name: rick_and_morty

dependencies:
  http: ^0.13.3

environment:
  sdk: ">=2.10.0 <3.0.0"


```
- File: `rick_and_morty.dart`
---
