import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:zulfaniz_store/features/personalization/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Fungsi untuk menyimpan data user ke firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } catch (e) {
      throw "Something went wrong. Please try again.";
    }
  }

  // Function to fetch user detail based on user ID

  // Function to update user data in Firestore

  // Update any field in specific Users Collection

  // Upload any image

  // Function to remove user data from firestore
}
