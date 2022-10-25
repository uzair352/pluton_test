import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:image_picker/image_picker.dart';

class UtilService {
  // FirebaseService firebaseService = locator<FirebaseService>();

  showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey[300],
        textColor: Colors.black,
        fontSize: 16.0);
  }

  // Future<void> captureImage() async {
  //   // firebase_storage.Reference storageReference;
  //   // ignore: deprecated_member_use
  //   final picker = ImagePicker();
  //   File _image;
  //   var imageFile = await picker.getImage(
  //     source: ImageSource.camera,
  //     maxWidth: 600,
  //   );
  // }

  //   _image = File(imageFile.path);
  //   final appDir = await syspaths.getApplicationDocumentsDirectory();
  //   final fileName = path.basename(imageFile.path);
  //   final savedImage = await _image.copy('${appDir.path}/$fileName');
  //   storageReference =
  //       firebase_storage.FirebaseStorage.instance.ref().child("images/$userId");
  //   final firebase_storage.UploadTask uploadTask =
  //       storageReference.putFile(savedImage);
  //   final firebase_storage.TaskSnapshot downloadUrl =
  //       (await uploadTask.whenComplete(() => null));
  //   final String url = (await downloadUrl.ref.getDownloadURL());
  //   return url;
  // }
  // Future<void> browseImage() async {
  //   // firebase_storage.Reference storageReference;
  //   // ignore: deprecated_member_use
  //   final picker = ImagePicker();
  //   File _image;
  //   var imageFile = await picker.getImage(
  //     source: ImageSource.gallery,
  //     maxWidth: 600,
  //   );

    // _image = File(imageFile.path);
    // final appDir = await syspaths.getApplicationDocumentsDirectory();
    // final fileName = path.basename(imageFile.path);
    // final savedImage = await _image.copy('${appDir.path}/$fileName');
    // storageReference =
    //     firebase_storage.FirebaseStorage.instance.ref().child("images/$userId");
    // final firebase_storage.UploadTask uploadTask =
    //     storageReference.putFile(savedImage);
    // final firebase_storage.TaskSnapshot downloadUrl =
    //     (await uploadTask.whenComplete(() => null));
    // final String url = (await downloadUrl.ref.getDownloadURL());
    // return url;
 // }
}
