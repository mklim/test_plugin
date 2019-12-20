import 'package:flutterbuff_annotation/flutterbuff_struct.dart';

part 'property.flutterbuff.dart';

@FlutterbuffStruct()
class Property {
  String name;
  int age;
  bool forSale;
  double price;
  List<String> address;
  Map<int, double> previousSales;

  // Limitation of Dart builders, need to define these before codegen.
  static Property fromFlutterbuff(Map<String, dynamic> fb) => _$PropertyFromFlutterbuff(fb);
  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}
