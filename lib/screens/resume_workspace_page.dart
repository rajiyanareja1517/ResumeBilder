import 'package:flutter/material.dart';

import '../utils/custom_widget.dart';
import '../utils/global.dart';

class ResumeWorkspacePage extends StatefulWidget {
  const ResumeWorkspacePage({super.key});

  @override
  State<ResumeWorkspacePage> createState() => _ResumeWorkspacePageState();
}

class _ResumeWorkspacePageState extends State<ResumeWorkspacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CustomWidget.getAppBar(
                context: context,
                title: "Resume Workspace",
                subtitle: "Build Option"),
            ...Global.allWorkspaceInfo.map((e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(e.navigation);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            e.icon,
                            Container(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  e.lable,
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
