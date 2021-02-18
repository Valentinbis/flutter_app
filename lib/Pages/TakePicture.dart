import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakePicture extends StatefulWidget {
  const TakePicture({Key key}) : super(key: key);

  @override
  _TakePictureState createState() => _TakePictureState();
}

class _TakePictureState extends State<TakePicture> {
  File _image;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prend une photo'),
      ),
      body: Center(
        child: _image == null ? Text('No image selected.') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => _getImage(),
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  Future _getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  // File _imageFile;
  // final _picker = ImagePicker();

  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     children: <Widget>[
  //       ButtonBar(
  //         children: <Widget>[
  //           IconButton(
  //             icon: const Icon(Icons.photo_camera),
  //             onPressed: () async => _pickImageFromCamera(),
  //             tooltip: 'Shoot picture',
  //           ),
  //           IconButton(
  //             icon: const Icon(Icons.photo),
  //             onPressed: () async => _pickImageFromGallery(),
  //             tooltip: 'Pick from gallery',
  //           ),
  //         ],
  //       ),
  //       if (this._imageFile == null)
  //         const Placeholder()
  //       else
  //         Image.file(this._imageFile),
  //     ],
  //   );
  // }

  // Future _pickImageFromGallery() async {
  //   final PickedFile pickedFile =
  //       await _picker.getImage(source: ImageSource.gallery);
  //   setState(() => this._imageFile = File(pickedFile.path));
  // }

  // Future _pickImageFromCamera() async {
  //   final PickedFile pickedFile =
  //       await _picker.getImage(source: ImageSource.camera);
  //   setState(() => this._imageFile = File(pickedFile.path));
  // }
}
