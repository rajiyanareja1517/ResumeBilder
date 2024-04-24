import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/screens/contact_info_page.dart';
import 'package:resume_app/screens/declaration_page.dart';
import 'package:resume_app/screens/home_page.dart';
import 'package:resume_app/screens/personal_deatail_page.dart';
import 'package:resume_app/screens/resume_workspace_page.dart';
import 'package:resume_app/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:'splash',
    routes: {
  'home':(context) =>const HomePage(),
  'resume_workspace':(context) => const ResumeWorkspacePage(),
  'splash':(context) => const SplashScreen(),
  'contact_info':(context) => const ContactInfoPage(),
  'carrier_objective':(context) => const SplashScreen(),
  'personal_detail_page':(context) => const PersonalDetailPage(),
  'declaaration':(context) => const DeclarationPage(),

  },
  ));
}
