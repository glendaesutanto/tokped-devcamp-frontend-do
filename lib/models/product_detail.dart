part of 'models.dart';

class ProductDetail {
  String id;
  String address;
  String email;
  String password;

  ProductDetail({
    this.id = "",
    @required this.address,
    @required this.password,
    @required this.email,
  });
}
