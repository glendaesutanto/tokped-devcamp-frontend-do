part of 'models.dart';

class ShippingDetail {
  String id;
  String address;
  String email;
  String password;

  ShippingDetail({
    this.id = "",
    @required this.address,
    @required this.password,
    @required this.email,
  });
}
