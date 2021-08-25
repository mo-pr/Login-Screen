import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class loginLogic{
  var usrData = {
    'mail':'',
    'passwd':''
  };
  getFormData(mail, passwd) {
    usrData['mail'] = mail;
    usrData['passwd'] = passwd;
    print(usrData);
    showToast('Login erfolgreich');
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