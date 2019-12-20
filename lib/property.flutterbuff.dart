part of 'property.dart';

class Property implements _Property {
  Property({this.name, this.age, this.forSale, this.price, this.address, this.previousSales});

  static Property fromFlutterbuff(Map<String, dynamic> flutterbuff) {
    return Property(name: flutterbuff["name"], age: flutterbuff["age"], forSale: flutterbuff["forSale"], price: flutterbuff["price"], address: flutterbuff["address"], previousSales: flutterbuff["previousSales"]);
  }

  Map<String, dynamic> toFlutterbuff() {
    return <String, dynamic>{"name": name, "age": age, "forSale": forSale, "price": price, "address": address, "previousSales": previousSales};
  }

  String name;
  int age;
  bool forSale;
  double price;
  List<String> address;
  Map<int, double> previousSales;
}
