import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';




class AddOpinionPageContent extends StatelessWidget {
  const AddOpinionPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: FirebaseFirestore.instance.collection('movies').snapshots(),
        builder: (context, snapshot) {
          return const Center(
            child: Text('Dwa'),
          );
        });
  }
}