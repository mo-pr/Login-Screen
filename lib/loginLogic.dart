import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class loginLogic{
  getFormData(mail, passwd) {
    print(mail);
    print(passwd);
  }
  showToast(message){
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.blue,
      textColor: Colors.white
    );
  }
}