part of 'models.dart';

class ProductDetail {
  int id;
  String name;
  double price;
  int count;

  ProductDetail({
    @required this.id,
    @required this.name,
    @required this.price,
    @required this.count,
  });
}
