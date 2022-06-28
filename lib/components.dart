import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logindesign/my_home_page.dart';
import 'package:logindesign/res/colors.dart';
import 'package:logindesign/res/strings.dart';
import 'package:logindesign/res/values.dart';

class Component {
  final Widget _svgIcon = SvgPicture.asset('assets/images/img_logo.svg',
      color: Colors.white, semanticsLabel: 'A red up arrow');
  bool _isVisible = false;
  bool _isVisible2 = false;
  late HomePageState _homePageState;

  Component(HomePageState homePageState) {
    this._homePageState = homePageState;
  }

  Widget getIcon() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: MyValues().m72),
      child: _svgIcon,
    );
  }

  Widget setText(String text) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical: MyValues().m16),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget getEditEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MyValues().m8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(MyValues().m20))),
      child: TextField(
          cursorColor: Colors.white,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          obscureText: !_isVisible2,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: MyStrings().textEmail,
              icon: Icon(
                Icons.person_outline,
              ),
              suffixIcon: IconButton(
                  onPressed: () => setVisible2(),
                  icon: Icon(_isVisible2
                      ? Icons.check_circle
                      : Icons.check_circle_outline)))),
    );
  }

  Widget getEditPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MyValues().m8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(MyValues().m20))),
      child: TextField(
          obscureText: !_isVisible,
          cursorColor: Colors.white,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: MyStrings().textPassword,
              icon: Icon(
                Icons.lock_outline,
              ),
              suffixIcon: IconButton(
                  onPressed: () => setVisible(),
                  icon: Icon(_isVisible
                      ? Icons.check_circle
                      : Icons.check_circle_outline)))),
    );
  }

  Widget getbtns() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, MyValues().m150, 0, MyValues().m32),
      child: Column(
        children: [
          InkWell(
            onTap: () => onbtnLogin(),
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: MyColors().dark,
                  borderRadius: BorderRadius.circular(MyValues().m20)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  MyStrings().textLogin,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 8,
          ),
          InkWell(
            onTap: () => onbtnLogup(),
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(MyValues().m20)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  MyStrings().textLogup,
                  style: TextStyle(color: MyColors().dark),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  onbtnLogin() {
    print('login');
  }

  onbtnLogup() {
    print('logup');
  }

  setVisible() {
    print('visivel our invisible');
    _homePageState.setState(() {
      _isVisible = !_isVisible;
    });
  }

  setVisible2() {
    print('visivel our invisible');
    _homePageState.setState(() {
      _isVisible2 = !_isVisible2;
    });
  }
}
