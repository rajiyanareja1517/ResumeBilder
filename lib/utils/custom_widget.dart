import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resume_app/utils/text_styling.dart';

import 'all_color.dart';

class CustomWidget {
  static dynamic getAppBar(
      {required BuildContext context,
      required String title,
      required String subtitle}) {
    return Container(
      height: 170,
      color: primaryColor,
      child: Column(
        children: [
          SizedBox(
            height: 48,
          ),
          Container(
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 25, color: whiteColor, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              subtitle,
              style: TextStyle(
                  fontSize: 22, color: whiteColor, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  static dynamic getAppBar1(
      {required BuildContext context,
      required String title,
      required Row child}) {
    return Container(
      height: 170,
      color: primaryColor,
      child: Column(
        children: [
          SizedBox(
            height: 48,
          ),
          Container(
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 25, color: whiteColor, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              child: child),
        ],
      ),
    );
  }
}
