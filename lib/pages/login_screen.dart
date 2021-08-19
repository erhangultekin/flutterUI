import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterchallenge/pages/signup_screen.dart';
import 'package:http/http.dart' as http;

import 'main_screen.dart';

class login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isHidden = true;

  Future loginMethod(String email, String password) async {
    var response = await http.put(
      Uri.parse("https://welive-app.com:443/api/v1/entrance/login"),
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
      );
    } else {
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('ERROR!'),
              content: const Text('WRONG ID OR PASSWORD!'),
              actions: <Widget>[
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login(),
                    ),
                  ),
                  child: const Text('TRY AGAIN'),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () => {},
                  child: const Text('FORGOT YOUR PASSWORD?'),
                ),
              ],
            ),
          )) ??
          false;
    }
  }

  Future<bool> _onWillPop() async {
    // This dialog will exit your app on saying yes
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  Widget horizontalWidget(String label, double height) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              height: height,
            )),
      ),
      Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Divider(
              color: Colors.black,
              height: height,
            )),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey.shade200,
            body: Padding(
                padding: EdgeInsets.fromLTRB(20, 75, 20, 20),
                child: ListView(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'E-mail address',
                          style: TextStyle(fontSize: 18, color: Colors.black38),
                        )),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40))),
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
                          style: TextStyle(fontSize: 18, color: Colors.black38),
                        )),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40))),
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        obscureText: _isHidden,
                        controller: passwordController,
                        onSubmitted: (value) {
                          loginMethod(emailController.text.toString(),
                              passwordController.text.toString());
                        },
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
                            color: Colors.red.shade900,
                            border: Border.all(
                              color: Colors.red.shade900,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40))),
                        height: 70,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextButton(
                          child: const Text(
                            'Create account',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => signUp(),
                              ),
                            );
                          },
                        )),
                    horizontalWidget("OR", 75),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40))),
                      height: 65,
                      padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
                      child: TextButton(
                        onPressed: () {
                          debugPrint("Clickable");
                        },
                        child: const ListTile(
                          leading: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage(
                                "https://seeklogo.com/images/F/facebook-icon-circle-logo-09F32F61FF-seeklogo.com.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(
                            "Continue with Facebook ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40))),
                      height: 65,
                      padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
                      child: TextButton(
                        onPressed: () {
                          debugPrint("Clickable");
                        },
                        child: const ListTile(
                          leading: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage(
                                "https://cyanogenmods.b-cdn.net/wp-content/uploads/2020/10/Gmail_round-384x384-1.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(
                            "Continue with Gmail",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }
}
