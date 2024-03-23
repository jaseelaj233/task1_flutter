import 'package:flutter/material.dart';
import 'package:task1/homescreen.dart';
import 'package:task1/login.dart';

import 'task1.dart';

class Datas {
  List<Map<String, dynamic>> items = [
    {
      'profileimg': "assets/trivior.jpg",
      'username': 'trivor',
      'time': '10 m',
      'postimg': 'assets/office.jpg',
    },
    {
      'profileimg': "assets/merry.jpg",
      'username': 'merry',
      'time': '15 m',
      'postimg': 'assets/world.jpg',
    },
    {
      'profileimg':
          "assets/240_F_338903738_RT7vLyCCZeWWvKD42waga3xej2CGFnXW.jpg",
      'username': 'annie',
      'time': '15 m',
      'postimg': 'assets/pexels-photo-674010.jpeg',
    },
    {
      'profileimg': "assets/aspen.jpg",
      'username': 'aspen',
      'time': '1 hour',
      'postimg': 'assets/mountain.jpg',
    },
  ];
  TextEditingController usernamecontroller = TextEditingController();
  GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  GlobalKey<FormState> signupkey = GlobalKey<FormState>();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conformpasswordcontroller = TextEditingController();
  TextEditingController terms = TextEditingController();

  void checkuser(String username, String password, context) {
    if (username == 'jasi' && password == '1234') {
      print('correct');
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Home(),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('invalid username or password')));
      print('not correct');
    }
  }

  void sign(String password, String conformpassword, context) {
    if (password == conformpassword) {
      print('correct');
      Navigator.of(context).pop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('invalid password and conformpasword')));
      print('not correct');
    }
  }

  void checkterms(bool ischecked, context) {
    if (ischecked == false) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('please click the terms and condition')));
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Login(),
      ));
    }
  }
}
