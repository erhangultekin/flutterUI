import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class signUp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<signUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final bool _isHidden = true;

  Future signUpmethod(String email, String password) async {
    var response = await http.post(
      Uri.parse("https://welive-app.com:443/api/v1/entrance/signup"),
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
        'fullName': 'yeni user2',
        'username': 'yeniuser123456'
      }),
    );

    if (response.statusCode == 200) {
      return Fluttertoast.showToast(
          msg: "Account created successfully",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      throw Exception('Failed to create User.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 75, 20, 20),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'E-mail address',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'mail@mail.com',
                      hintStyle:
                          TextStyle(fontSize: 20.0, color: Colors.black38),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Password',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    obscureText: _isHidden,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '8 character password',
                      hintStyle:
                          TextStyle(fontSize: 20.0, color: Colors.black38),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.redAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextButton(
                      child: const Text(
                        'Create account',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        debugPrint(emailController.text.toString());
                        debugPrint(passwordController.text.toString());
                        signUpmethod(emailController.text.toString(),
                            passwordController.text.toString());
                      },
                    )),
              ],
            )));
  }
}
