part of 'models.dart';

class CustomerTransaction {
  int id;
  String customerName;
  CustomerAddress customerAddress;
  ProductDetail productDetail;
  int totalPrice;
  ShippingDetail shippingDetail;
  int totalProduct;
  String note;
  bool protection;
  int shippingCost;
  double discount;
  String paymentMethod;

  CustomerTransaction({
    @required this.id,
    @required this.customerName,
    @required this.customerAddress,
    @required this.productDetail,
    @required this.totalPrice,
    @required this.shippingDetail,
    @required this.totalProduct,
    @required this.note,
    @required this.protection,
    @required this.shippingCost,
    @required this.discount,
    @required this.paymentMethod,
  });
}
