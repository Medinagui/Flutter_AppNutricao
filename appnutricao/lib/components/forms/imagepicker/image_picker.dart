import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'image_picker_ifphoto.dart';
import 'image_picker_elsephoto.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class MyImagePicker extends StatefulWidget {
  const   MyImagePicker({super.key});

  @override
  State<MyImagePicker> createState() => _MyImagePickerState();
}

String? imageSelected;

class _MyImagePickerState extends State<MyImagePicker> {
  
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final XFile? image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);

      final Directory caminho = await getApplicationDocumentsDirectory();

      setState(() => this.image = imageTemporary);

      final File newImage = await imageTemporary.copy('${caminho.toString()}/image1.jpg');
      final String newCaminho = newImage.path;

      setState(() => imageSelected = newCaminho);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return image != null
        ? ImgPickerIfPhoto(pickImage: pickImage,image: image,)
        : ImgPickerElsePhoto(pickImage: pickImage, image: image,);
  }
}
