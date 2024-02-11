List<double> convertToF(List<double> temperaturesInC) {
  var tempaturesInF = temperaturesInC.map((temp) => temp * 9 / 5 + 32).toList();
  tempaturesInF = tempaturesInF.map((temp) => double.parse(temp.toStringAsFixed(2))).toList();
  return tempaturesInF;
}
