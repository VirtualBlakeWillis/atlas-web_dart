import './4-util.dart';
import 'dart:convert';


Future<double> calculateTotal() async {
  try {
    var userData = await fetchUserData();
    var userMap = jsonDecode(userData);
    String orders = await fetchUserOrders(userMap["id"]);
    List ordersList = jsonDecode(orders);
    double total = 0;
    for (String product in ordersList) {
      String price = await fetchProductPrice(product);
      total+= double.parse(price);
    }
    return (total);


  } catch (err) {
    return (-1);
  }

}