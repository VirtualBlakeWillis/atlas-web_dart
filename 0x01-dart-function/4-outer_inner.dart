void outer(String name, String id) {
  String inner() {
    var nameList = name.split(' ');
    var agent = '${nameList[1].substring(0,1)}.${nameList[0]}';
    return('Hello Agent $agent your id is $id');
  }
  var result = inner();
  print(result);
}