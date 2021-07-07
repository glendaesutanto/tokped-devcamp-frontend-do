part of 'models.dart';

class DropPointDetail {
  String id;
  String address;
  String email;
  String password;
  double latitude;
  double longitude;

  DropPointDetail({
    this.id = "",
    @required this.address,
    @required this.password,
    @required this.email,
    @required this.latitude,
    @required this.longitude,
  });
}
