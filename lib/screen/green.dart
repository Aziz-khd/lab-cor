import 'package:app/screen/login.dart';
import 'package:app/screen/siginup.dart';
import 'package:app/screen/view.dart';
import 'package:app/screen/view2.dart';
import 'package:app/screen/view3.dart';
import 'package:app/screen/view4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/screen/login.dart';

class green extends StatefulWidget {
  const green({super.key});

  @override
  State<green> createState() => _greenState();
}

class _greenState extends State<green> {
  String? role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 161, 224, 163),
      appBar: AppBar(
        //title: Text("Radio Button in Flutter"),
        backgroundColor: Color.fromARGB(255, 12, 86, 15),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "What is your Role?",
              style: TextStyle(fontSize: 18),
            ),
            Divider(),
            RadioListTile(
              title: Text("Admin"),
              value: "admin",
              groupValue: role,
              onChanged: (value) {
                setState(() {
                  role = value.toString();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return View_Screen3();
                    },
                  ));
                });
              },
            ),
            RadioListTile(
              title: Text("Normal"),
              value: "normal",
              groupValue: role,
              onChanged: (value) {
                setState(() {
                  role = value.toString();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return View_Screen4();
                    },
                  ));
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
