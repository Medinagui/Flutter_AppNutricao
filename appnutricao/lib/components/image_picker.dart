import 'dart:io';
import 'package:appnutricao/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker extends StatefulWidget {
  const MyImagePicker({super.key});

  @override
  State<MyImagePicker> createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);

      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image != null
            ? Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )),

                            //modal return
                            builder: (context) {
                              return Container(
                                height: 180,
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      colorsTwo.colorScheme
                                                          .secondary),
                                              padding:
                                                  MaterialStateProperty.all<
                                                          EdgeInsets>(
                                                      const EdgeInsets.all(
                                                          10))),
                                          onPressed: () {
                                            pickImage(ImageSource.camera);

                                            Navigator.pop(context);
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Icon(
                                                Icons.photo_camera,
                                                size: 50,
                                              ),
                                              Text(
                                                'Camera',
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ],
                                          )),
                                      const SizedBox(height: 10),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      colorsTwo.colorScheme
                                                          .secondary),
                                              padding:
                                                  MaterialStateProperty.all<
                                                          EdgeInsets>(
                                                      const EdgeInsets.all(
                                                          10))),
                                          onPressed: () {
                                            pickImage(ImageSource.gallery);
                                            Navigator.pop(context);
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Icon(
                                                Icons
                                                    .add_photo_alternate_rounded,
                                                size: 50,
                                              ),
                                              Text(
                                                'Galeria',
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ],
                                          )),
                                    ]),
                              );
                            });
                      },
                      child: ClipOval(
                          child: Image.file(
                        image!,
                        width: 160,
                        height: 160,
                        fit: BoxFit.cover,
                      ))),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Clique na imagem caso queira alterá-la'),
                ],
              )
            : ClipOval(
                child: Container(
                  color: colorsOne.colorScheme.secondary,
                  padding: const EdgeInsets.all(20),
                  child: IconButton(
                      iconSize: 130,
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )),

                            //modal return
                            builder: (context) {
                              return Container(
                                height: 180,
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      colorsTwo.colorScheme
                                                          .secondary),
                                              padding:
                                                  MaterialStateProperty.all<
                                                          EdgeInsets>(
                                                      const EdgeInsets.all(
                                                          10))),
                                          onPressed: () {
                                            pickImage(ImageSource.camera);

                                            Navigator.pop(context);
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Icon(
                                                Icons.photo_camera,
                                                size: 50,
                                              ),
                                              Text(
                                                'Camera',
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ],
                                          )),
                                      const SizedBox(height: 10),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      colorsTwo.colorScheme
                                                          .secondary),
                                              padding:
                                                  MaterialStateProperty.all<
                                                          EdgeInsets>(
                                                      const EdgeInsets.all(
                                                          10))),
                                          onPressed: () {
                                            pickImage(ImageSource.gallery);
                                            Navigator.pop(context);
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Icon(
                                                Icons
                                                    .add_photo_alternate_rounded,
                                                size: 50,
                                              ),
                                              Text(
                                                'Galeria',
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ],
                                          )),
                                    ]),
                              );
                            });
                      },
                      icon: const Icon(Icons.add_photo_alternate_outlined,
                          color: Colors.white)),
                ),
              )
      ],
    );
  }
}
