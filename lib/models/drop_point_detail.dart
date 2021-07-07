part of 'models.dart';

class DropPointDetail {
  int id;
  String address;
  String email;
  String password;
  double latitude;
  double longitude;

  DropPointDetail({
    @required this.id,
    @required this.address,
    @required this.password,
    @required this.email,
    @required this.latitude,
    @required this.longitude,
  });
}
