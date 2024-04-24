import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/utils/custom_widget.dart';

class TechnicalSkillsPage extends StatefulWidget {
  const TechnicalSkillsPage({super.key});

  @override
  State<TechnicalSkillsPage> createState() => _TechnicalSkillsPageState();
}

class _TechnicalSkillsPageState extends State<TechnicalSkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomWidget.getAppBar(
                context: context, title: "Personal Details", subtitle: ""),
            Container(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text("Technical Skills"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
