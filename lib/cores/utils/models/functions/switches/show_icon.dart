import 'package:flutter/material.dart';

Widget showIconPassword(bool isPassword, bool isSecure){
  if(isPassword){
    if(isSecure){
      return Icon(Icons.remove_red_eye);
    }
    else{
      return Icon(Icons.remove_red_eye_outlined);
    }
  }
  else{
    return SizedBox.shrink();
  }
}