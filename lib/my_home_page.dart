import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logindesign/res/colors.dart';

import 'components.dart';
import 'res/strings.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late Component component = Component(this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              MyColors().primary,
              MyColors().primary,
              MyColors().secundary
            ])),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
            child: ListView(
              children: [
                component.getIcon(),
                component.setText(MyStrings().textEmail),
                component.getEditEmail(),
                component.setText(MyStrings().textPassword),
                component.getEditPassword(),
                component.getbtns()
              ],
            )),
      ),
    );
  }
}
