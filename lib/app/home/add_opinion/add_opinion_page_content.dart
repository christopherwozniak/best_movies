
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';




class AddOpinionPageContent extends StatefulWidget {
  const AddOpinionPageContent({
    Key? key,
  }) : super(key: key);

  @override
  State<AddOpinionPageContent> createState() => _AddOpinionPageContentState();
}

class _AddOpinionPageContentState extends State<AddOpinionPageContent> {

  var movieName= '';
  var actorName= '';
  @override
  Widget build(BuildContext context) {
    {
          return  Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                 TextField(
                  decoration: const InputDecoration(hintText: 'Give the movie name',), onChanged: (newValue) {
                  setState(() {
                    movieName = newValue;
                    
                  });

                 }),const SizedBox(height: 20,),
                 TextField(decoration: const InputDecoration(hintText: 'Give the actor name',), onChanged: (newValue) {
                  setState(() {
                    actorName = newValue;
                    
                  });

                 }),const SizedBox(height: 20,),
                 ElevatedButton(onPressed: () {
                  FirebaseFirestore.instance.collection('movies',).add({
                    'name':movieName,
                    'actor':actorName,
                    'rating': 3.0,

                  });
                 }, child: const Text('Add opinion'),),
                
  ],
            ),
          );
        
  }
}}