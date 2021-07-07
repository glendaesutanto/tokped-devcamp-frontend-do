part of 'models.dart';

class CustomerAddress {
  int customerId;
  String address;
  double latitude;
  double longitude;

  CustomerAddress({
    @required this.customerId,
    @required this.address,
    @required this.latitude,
    @required this.longitude,
  });
}
