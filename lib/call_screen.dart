import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List<File> _images = [];
  File? images = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          images != null
              ? Image.file(
            images!,
            width: MediaQuery.of(context).size.width,
            height: 200,
          )
              : Text(""),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 210,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Image.file(
                  _images[index],
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                );
              },
              itemCount: _images.length,
            ),
          ),
          TextButton(
            onPressed: () {
              showAlertD();
            },
            child: Text(
              "Image",
              style: TextStyle(fontSize: 30),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Images",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }

  void showAlertD() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Select"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                imagePic(ImageSource.camera);
              },
              child: Text("camera"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                imagePic(ImageSource.gallery);
              },
              child: Text("gallery"),
            ),
          ],
        );
      },
    );
  }

  imagePic(ImageSource imageSource) async {
    ImagePicker _picker = ImagePicker();
    XFile? image1 = await _picker.pickImage(source: imageSource);
    if (image1 != null) {
      //image=File(image1.path);
      setState(() {});
    }
  }
}
