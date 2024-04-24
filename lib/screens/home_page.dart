import 'package:flutter/material.dart';
import 'package:resume_app/utils/all_color.dart';
import 'package:resume_app/utils/custom_widget.dart';
import 'package:resume_app/utils/text_styling.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomWidget.getAppBar(
              context: context, title: "Resume Builder", subtitle: "RESUMES"),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/open-cardboard-box.png",
                  height: 50,
                ),
                Text(
                  "No Resumes + Create new resume.",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('resume_workspace');
        },
        backgroundColor: primaryColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
