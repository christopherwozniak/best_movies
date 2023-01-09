import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



class MoviesPageContent extends StatelessWidget {
  const MoviesPageContent({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('movies').orderBy('rating', descending: true,).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Something go wrong'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Text('Loading'));
          }

          final documents= snapshot.data!.docs; 

          return ListView(
            children:  [
              for (final document in documents) ... [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(document['name']),
                        Text(document['actor']
                      ),],
                  ),Text(document['rating'].toString(),),
                    
              ],),
              ),],
              
              
            ],
          );
        });
  }
}