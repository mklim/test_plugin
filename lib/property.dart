import 'package:flutterbuff_annotation/flutterbuff_struct.dart';

part 'property.flutterbuff.dart';

@FlutterbuffStruct()
abstract class _Property {
  String name;
  int age;
  bool forSale;
  double price;
  List<String> address;
  Map<int, double> previousSales;
}
