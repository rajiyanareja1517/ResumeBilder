
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/utils/all_color.dart';
import '../utils/custom_widget.dart';
import '../utils/global.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({super.key});

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  bool istaped = false;
  bool istaped2 = true;

  XFile? xFile;
  ImagePicker imagePicker = ImagePicker();
  String? path;

  GlobalKey<FormState> contactInfoKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  get sage => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          CustomWidget.getAppBar1(
            context: context,
            title: "Resumes Workspace",
            child: Row(

              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          istaped = false;
                          istaped2 = true;
                        });
                      },
                      child: Text(
                        "Contact",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: (istaped) ? sage : Colors.white,
                            decoration: (istaped)
                                ? TextDecoration.none
                                : TextDecoration.underline,),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          istaped2 = false;
                          istaped = true;
                        });
                      },
                      child: Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: (istaped2) ? sage : Colors.white,
                          decoration: (istaped2)
                              ? TextDecoration.none
                              : TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Center(

            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                (istaped2)
                    ? SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        height: MediaQuery.of(context).size.height / 1.25,
                        child: Form(
                          key: contactInfoKey,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 23),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: TextFormField(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter Name";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              Global.name = val ?? "";
                                            },
                                            controller: nameController,
                                            decoration: const InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.person,
                                                size: 30,
                                              ),
                                              label: Text("Name"),
                                              border: OutlineInputBorder(),
                                              hintText: "Name",
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 23),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        keyboardType:
                                        TextInputType.emailAddress,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter Email";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Global.email = val ?? "";
                                        },
                                        controller: emailController,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.email,
                                            size: 30,
                                          ),
                                          label: Text("Email"),
                                          border: OutlineInputBorder(),
                                          hintText: "Email",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 23),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter Contact";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Global.number = val ?? "";
                                        },
                                        controller: contactController,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.call,
                                            size: 30,
                                          ),
                                          label: Text("Contact"),
                                          border: OutlineInputBorder(),
                                          hintText: "Contact",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 23),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter Address";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          Global.address = val ?? "";
                                        },
                                        controller: addressController,
                                        maxLines: 3,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.location_on,
                                            size: 30,
                                          ),
                                          label: Text("Address"),
                                          border: OutlineInputBorder(),
                                          hintText: "Current Address",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  OutlinedButton(
                                    onPressed: () {
                                      if (contactInfoKey.currentState!
                                          .validate()) {
                                        contactInfoKey.currentState!.save();
                                        contactInfoKey.currentState!.reset();

                                        nameController.clear();
                                        emailController.clear();
                                        contactController.clear();
                                        addressController.clear();
                                      }
                                    },
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 14),
                                    ),
                                    child: const Text("Clear"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (contactInfoKey.currentState!
                                          .validate()) {
                                        contactInfoKey.currentState!.save();

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            behavior:
                                            SnackBarBehavior.floating,
                                            action: SnackBarAction(
                                              label: "Next",
                                              onPressed: () {
                                                setState(() {
                                                  istaped2 = false;
                                                });
                                              },
                                              // textColor: primaryWhite,
                                            ),
                                            content: const Text(
                                              "Contact information Saved SuccessFully!!!",
                                            ),
                                          ),
                                        );
                                        contactInfoKey.currentState!.reset();
                                        nameController.clear();
                                        emailController.clear();
                                        contactController.clear();
                                        addressController.clear();
                                      }
                                    },
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 14),
                                      // foregroundColor: primaryWhite,
                                      //backgroundColor: primaryBlueColor,
                                    ),
                                    child: const Text("Save"),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                    : Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 500,
                      height: MediaQuery.of(context).size.height / 2.4,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              alignment: Alignment.center,
                              color: primaryColor,
                              height: 250,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: (path != null)
                                    ? FileImage(File(path!))
                                    : null,
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text(
                                            "Pick Image",
                                          ),
                                          content: const Text(
                                            "Choose Image From Gallery or Camera",
                                          ),
                                          actions: [
                                            FloatingActionButton(
                                              mini: true,
                                              onPressed: () async {
                                                xFile = await imagePicker
                                                    .pickImage(
                                                    source: ImageSource
                                                        .camera);
                                                setState(() {
                                                  if (xFile != null) {
                                                    path = xFile!.path;
                                                  }
                                                });
                                                Navigator.of(context).pop();
                                              },
                                              elevation: 3,
                                              child: const Icon(
                                                Icons.camera_alt,
                                              ),
                                            ),
                                            FloatingActionButton(
                                              mini: true,
                                              onPressed: () async {
                                                xFile = await imagePicker
                                                    .pickImage(
                                                    source: ImageSource
                                                        .gallery);
                                                setState(() {
                                                  if (xFile != null) {
                                                    path = xFile!.path;
                                                  }
                                                  Navigator.of(context).pop();
                                                });
                                              },
                                              elevation: 3,
                                              child: const Icon(
                                                Icons.image,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: (path != null)
                                      ? Container()
                                      : const Icon(Icons.add),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 14),
                                ),
                                child: const Text("clear"),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    if (path != null) {
                                      Global.savefile = File(path!);
                                    }
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      behavior: SnackBarBehavior.floating,
                                      action: SnackBarAction(
                                        label: "Exit",
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        // textColor: primaryWhite,
                                      ),
                                      content: const Text(
                                        "Image Saved SuccessFully!!!",
                                      ),
                                    ),
                                  );
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 14),
                                ),
                                child: const Text("save"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )



    );
  }
}
