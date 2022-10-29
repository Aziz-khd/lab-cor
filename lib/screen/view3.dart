import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class View_Screen3 extends StatefulWidget {
  const View_Screen3({super.key});

  @override
  State<View_Screen3> createState() => _View_Screen3State();
}

class _View_Screen3State extends State<View_Screen3> {
  CollectionReference studentdb = FirebaseFirestore.instance.collection("z");

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: studentdb.get(),
      builder: (BuildContext context, snapshot) {
        return Scaffold(
            appBar: AppBar(),
            body: Center(
                child: ListView.builder(
              itemCount: snapshot.data!.size,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Text(
                      snapshot.data!.docs[0]['email'],
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      snapshot.data!.docs[0]['id'].toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      snapshot.data!.docs[0]['user type'],
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                );
              },
            )));
      },
    );
  }
}
