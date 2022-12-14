import 'package:app/screen/login.dart';
import 'package:app/screen/siginup.dart';
import 'package:app/screen/view.dart';
import 'package:app/screen/view2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/screen/login.dart';

class blue extends StatefulWidget {
  const blue({super.key});

  @override
  State<blue> createState() => _blueState();
}

class _blueState extends State<blue> {
  String? role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 120, 177, 224),
      appBar: AppBar(
        //title: Text("Radio Button in Flutter"),
        backgroundColor: Color.fromARGB(255, 9, 44, 73),
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
                      return View_Screen();
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
                      return View_Screen1();
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
