import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const PHOTO = "photo";

  String id = "";
  String name = "";
  String photo = "";

  UserModel({
    required this.id,
    required this.name,
    required this.photo,
  });

//  getters
  String get getname => name;
  String get getphoto => photo;
  String get getid => id;

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    dynamic data= snapshot.data();
    name = data[NAME];
    photo = data[PHOTO];
    id = data[ID];
  }
}
