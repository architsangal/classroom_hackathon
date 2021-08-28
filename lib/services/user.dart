
import 'package:classroom_hackathon/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants.dart';

class UserServices {
  String collection = "users";

  void createUser({
    required String? id,
    required String? name,
    required String? photo,
  }) {
    firebaseFirestore.collection(collection).doc(id).set({
      "name": name,
      "id": id,
      "photo": photo,
    });
  }

  Future<UserModel> getUserById(String id) =>
      firebaseFirestore.collection(collection).doc(id).get().then((doc) {
        return UserModel.fromSnapshot(doc);
      });

  Future<bool> doesUserExist(String id) async => firebaseFirestore
      .collection(collection)
      .doc(id)
      .get()
      .then((value) => value.exists);
}
