import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uber_clone/src/utils/colors.dart' as utils;

class Snackbar {

  static void showSnackbar(BuildContext context, GlobalKey<ScaffoldState> key, String text){
    if(context == null) return;
    if(key == null) return;
    if(key.currentContext == null) return;

    FocusScope.of(context).requestFocus(new FocusNode());

    key.currentState?.removeCurrentSnackBar();
    key.currentState.showSnackBar(new SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      elevation: 6,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      backgroundColor: utils.Colors.uberCloneColor,
      duration: Duration(seconds: 3),

    ));
  }

}