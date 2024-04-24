

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/work_space.dart';

class Global {
  static List<WorkSpace> allWorkspaceInfo = [
    WorkSpace(
        icon: Icon(
          Icons.quick_contacts_mail_outlined,
          color: Colors.black,
        ),
        lable: "Contact info",
        navigation: "contact_info"),
    WorkSpace(
        icon: Icon(
          Icons.quick_contacts_mail_outlined,
          color: Colors.black,
        ),
        lable: "Carrier objective",
        navigation: "carrier_objective"),
    WorkSpace(
        icon: Icon(
          Icons.quick_contacts_mail_outlined,
          color: Colors.black,
        ),
        lable: "Personal Details",
        navigation: "personal_details"),
    WorkSpace(
        icon: Icon(
          Icons.quick_contacts_mail_outlined,
          color: Colors.black,
        ),
        lable: "Education",
        navigation: "education"),
    WorkSpace(
        icon: Icon(
          Icons.quick_contacts_mail_outlined,
          color: Colors.black,
        ),
        lable: "Technical Skills",
        navigation: "education"),
    WorkSpace(
        icon: Icon(
          Icons.quick_contacts_mail_outlined,
          color: Colors.black,
        ),
        lable: "Interest/Hobbies",
        navigation: "interest_hobbies"),
    WorkSpace(
        icon: Icon(
          Icons.quick_contacts_mail_outlined,
          color: Colors.black,
        ),
        lable: "Projects",
        navigation: "projects"),
    WorkSpace(
        icon: Icon(
          Icons.quick_contacts_mail_outlined,
          color: Colors.black,
        ),
        lable: "Achievements",
        navigation: "achievements"),
    WorkSpace(
        icon: Icon(
          Icons.account_balance,
          color: Colors.black,
        ),
        lable: "References",
        navigation: "references"),
    WorkSpace(
        icon: Icon(
          Icons.adb_rounded,
          color: Colors.black,
        ),
        lable: "Declaration",
        navigation: "declaration"),
  ];
  static List<TextEditingController> allSkills = [
    TextEditingController(),
    TextEditingController()
  ];
  static List<String> skillsData = [];

  //Contact Info Variables
  static String name = "";
  static String email = "";
  static String contact = "";
  static String address = "";
  static File? profileImageFile;

  static String number="";

  static File? savefile=null;
}
