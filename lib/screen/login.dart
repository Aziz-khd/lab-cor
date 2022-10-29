import 'package:app/screen/blue.dart';
import 'package:app/screen/green.dart';
import 'package:app/screen/home.dart';
import 'package:app/screen/red.dart';
import 'package:app/screen/siginup.dart';
import 'package:app/screen/yallow.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.iconscout.com/icon/free/png-256/flutter-3629959-3031431.png"))),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 208, 79, 255),
                      ),
                      child: const Text('Login'),
                      onPressed: () async {
                        try {
                          FirebaseAuth myauthobject = FirebaseAuth.instance;
                          UserCredential loginguser =
                              await myauthobject.signInWithEmailAndPassword(
                                  email: nameController.text,
                                  password: passwordController.text);

                          setState(() {
                            if (nameController.text == "blue@gmail.com") {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return blue();
                                },
                              ));
                            } else if (nameController.text ==
                                "green@gmail.com") {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return green();
                                },
                              ));
                            } else if (nameController.text == "red@gmail.com") {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return red();
                                },
                              ));
                            } else {
                              nameController.text == "yallow@gmail.com";
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return y();
                                },
                              ));
                            }
                          });
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Container(
                            height: 30,
                            width: 75,
                            child: Text("sorry something wrong "),
                          )));
                        }
                      },
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Text("Dosen't have an account ?"),
                    TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Sign_up();
                          },
                        ));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )));
  }
}
