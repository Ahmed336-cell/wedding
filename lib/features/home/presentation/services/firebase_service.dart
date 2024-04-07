import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wedding/features/auth/data/profile.dart';

class FirebaseService {

  static Future<void> uploadImages(List<String> imagePaths,Profile profile) async {
    final storage = FirebaseStorage.instance;
    final firestore = FirebaseFirestore.instance;

    for (var path in imagePaths) {
      String imageName = DateTime.now().millisecondsSinceEpoch.toString();
      final Reference ref = storage.ref("photographersImages").child('${profile.name}').child('$imageName.jpg');
      final UploadTask uploadTask = ref.putFile(File(path));

      await uploadTask.whenComplete(() async {
        String url = await ref.getDownloadURL();
        await firestore.collection('photographers').doc(profile.profileId).collection("images").add({'url': url});
      });
    }
  }
}
