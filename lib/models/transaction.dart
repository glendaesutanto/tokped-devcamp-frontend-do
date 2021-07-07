part of 'models.dart';

class Transaction {
  String id;
  String cust_name;
  String cust_address;
  String email;
  String password;

  Transaction({
    this.id = "",
    @required this.location,
    @required this.password,
    @required this.email,
  });
}
