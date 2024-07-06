

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project_grad_flutter/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/methods/build_show_modal_bottom_sheet.dart';
import '../../../core/show_snack_bar_message.dart';

class AddInstructor extends StatefulWidget {
  const AddInstructor({super.key});

  @override
  State<AddInstructor> createState() => _AddInstructorState();
}

class _AddInstructorState extends State<AddInstructor> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerJob = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
  TextEditingController controllerSubject = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  String imageUrl = '';
  bool isLoading = false;

  File? selectedImage;
  String imagePath = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 5,
        title: const Text(
          "Add Instructor",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'BonaNovaSC'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: ()async {


          if (formKey.currentState!.validate()) {
            try {
              setState(() {
                isLoading = true;
              });
              if (imagePath != '') {
                if (imageUrl == '') {
                  imageUrl =
                      await _storeImage(imagePath: imagePath);
                } else {
                  imageUrl = await _updateImage(
                      imagePath: imagePath, url: imageUrl);
                }
              }
              final instructorCollection = FirebaseFirestore
                  .instance
                  .collection("Instructor");
              // final uid = instructorCollection.doc().id;

              await instructorCollection.add({
                "name":controllerName.text.trim(),
                "image":imageUrl,
                "job":controllerJob.text.trim(),
                "subject":controllerSubject.text.trim(),
                "description":controllerDescription.text.trim(),
              }).then((value) {
                showMotionToastMessage(
                    context, "Add successfully");
              });


              setState(() {
                isLoading = false;
              });
            } on FirebaseAuthException catch (e) {
              showMotionToastMessage(
                  context, e.message.toString());
            }
          }
        },
        child: isLoading!=true?const Icon(
          Icons.save,
          color: Colors.white,
        ):const Center(child: CircularProgressIndicator()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.camera_alt,
                                size: 40,
                              ),
                            ),
                            onTap: () {
                              buildShowModalBottomSheet(
                                context: context,
                                textButton1: "الكاميرا",
                                textButton2: "الصور",
                                onTapButton1: () {
                                  _pickerImage(source: ImageSource.camera)
                                      .then((value) => Navigator.pop(context));
                                },
                                onTapButton2: () {
                                  _pickerImage(source: ImageSource.gallery)
                                      .then((value) => Navigator.pop(context));
                                },
                              );
                            },
                          ),
                          selectedImage != null
                              ? Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectedImage = null;
                                  });
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 35,
                                )),
                          )
                              : Container(),
                        ],
                      ),
                      selectedImage != null
                          ? Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 25, end: 5),
                          child: Center(
                            child: FullScreenWidget(
                              disposeLevel: DisposeLevel.Medium,
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.file(
                                    selectedImage!,
                                    // width: 150,
                                    // height: 150,
                                    alignment: Alignment.center,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                          : Container(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomTextFormField(
                    hintText: "Name",
                    validator: (value){
                      if (value!.isEmpty) {
                        return "this is not empty";
                      }
                      return null;

                    },
                    controller: controllerName,
                  ),
                ),
                CustomTextFormField(
                  hintText: "job",
                  controller: controllerJob,validator: (value){
                  if (value!.isEmpty) {
                    return "this is not empty";
                  }
                  return null;

                },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CustomTextFormField(
                    hintText: "subject",
                    controller: controllerSubject,validator: (value){
                    if (value!.isEmpty) {
                      return "this is not empty";
                    }
                    return null;

                  },
                  ),
                ),
                CustomTextFormField(
                  hintText: "description",
                  controller: controllerDescription,validator: (value){
                  if (value!.isEmpty) {
                    return "this is not empty";
                  }
                  return null;

                },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future _pickerImage({required ImageSource source}) async {
    try {
      XFile? returnedImage = await ImagePicker().pickImage(source: source);
      print(returnedImage?.path);
      if (returnedImage == null) return;
      setState(() {
        selectedImage = File(returnedImage.path);
        imagePath = returnedImage.path;
      });
    } on PlatformException catch (e) {
      showMotionToastMessage(context, e.toString());
    }
  }

  Future<String> _storeImage({required String imagePath}) async {
    try {
      String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
      Reference referenceRoot = FirebaseStorage.instance.ref();
      Reference referenceImagesQuestions = referenceRoot.child("Instructor");
      Reference referenceImageUPLoad = referenceImagesQuestions.child(uniqueFileName);

      await referenceImageUPLoad.putFile(File(imagePath));
      String downloadUrl = await referenceImageUPLoad.getDownloadURL();

      return downloadUrl;

    } catch (e) {
      print("---------------------------------");
      print(e.toString());
      showMotionToastMessage(context, e.toString());
      return '';
    }
  }

  Future<String> _updateImage(
      {required String url, required String imagePath}) async {
    try {
      Reference referenceImageUPLoad = FirebaseStorage.instance.refFromURL(url);

      await referenceImageUPLoad.putFile(File(imagePath));
      String downloadUrl = await referenceImageUPLoad.getDownloadURL();
      return downloadUrl;

    } catch (e) {
      showMotionToastMessage(context, e.toString());
      return '';
    }
  }
}
