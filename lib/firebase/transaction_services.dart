part of 'firebase_services.dart';

class TransactionServices {
  static CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection("pengguna");

  static Future<Pengguna> getUser(String id) async {
    DocumentSnapshot documentSnapshot =
        await _collectionReference.doc(id).get();
    return Pengguna(
      id,
      documentSnapshot.data()['email'],
      balance: documentSnapshot.data()['balance'],
      profilePictureUrl: documentSnapshot.data()['profilePictureUrl'],
      selectedGenres: documentSnapshot.data()['selectedGenres'].toString().split(","),
      selectedLanguage: documentSnapshot.data()['selectedLanguage'],
      name: documentSnapshot.data()['name'],
    );
  }
}