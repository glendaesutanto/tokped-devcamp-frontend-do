import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tokped_devcamp_do/models/models.dart';
class FirebaseServices {
  static CollectionReference _collectionTransactionReference =
      FirebaseFirestore.instance.collection("transaction");
  static CollectionReference _collectionCustomerAddressReference =
      FirebaseFirestore.instance.collection("customer_address");
  static CollectionReference _collectionProductReference =
      FirebaseFirestore.instance.collection("product_detail");
  static CollectionReference _collectionShippingReference =
      FirebaseFirestore.instance.collection("shipping_detail");

  static Future<CustomerTransaction> getCustomerTransaction(int id) async {
    DocumentSnapshot documentSnapshot =
        await _collectionTransactionReference.doc(id.toString()).get();
    Map<String, dynamic> data = documentSnapshot.data();
    return CustomerTransaction(
        id: id,
        customerName: data['customer_name'],
        discount: data['discount'],
        note: data['note'],
        paymentMethod: data['payment_method'],
        protection: data['protection'],
        shippingCost: data['shipping_cost'],
        totalPrice: data['total_price'],
        totalProduct: data['total_product'],
        customerAddress: data['customer_name'],
        productDetail: data['customer_name'],
        shippingDetail: data['customer_name']);
  }

  static Future<CustomerAddress> getCustomerAddress(int id) async {
    DocumentSnapshot documentSnapshot =
        await _collectionCustomerAddressReference.doc(id.toString()).get();
    Map<String, dynamic> data = documentSnapshot.data();
    return CustomerAddress(
        customerId: id,
        address: data['address'],
        latitude: data['latitude'],
        longitude: data['longitude']);
  }

  static Future<ProductDetail> getProductDetail(int id) async {
    DocumentSnapshot documentSnapshot =
        await _collectionProductReference.doc(id.toString()).get();
    Map<String, dynamic> data = documentSnapshot.data();
    return ProductDetail(
      id: id,
      count: data['count'],
      name: data['name'],
      price: data['price'],
    );
  }

  static Future<ShippingDetail> getShippingDetail(int id) async {
    DocumentSnapshot documentSnapshot =
        await _collectionShippingReference.doc(id.toString()).get();
    Map<String, dynamic> data = documentSnapshot.data();
    return ShippingDetail(
      id: id,
      agent: data['agent'],
      type: data['type'],
    );
  }
}
