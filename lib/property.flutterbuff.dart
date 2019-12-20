part of 'property.dart';

Property _$PropertyFromFlutterbuff(Map<String, dynamic> fb) {
  Property output = Property();
  output.name = fb["name"];
  output.age = fb["age"];
  output.forSale = fb["forSale"];
  output.price = fb["price"];
  output.address = fb["address"];
  output.previousSales = fb["previousSales"];

  return output;
  }

Map<String, dynamic> _$PropertyToJson(Property input) {
  return <String, dynamic>{"name": input.name, "age": input.age, "forSale": input.forSale, "price": input.price, "address": input.address, "previousSales": input.previousSales};
}
