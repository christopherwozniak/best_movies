
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';




class AddOpinionPageContent extends StatefulWidget {
  const AddOpinionPageContent({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  final Function onSave;

  @override
  State<AddOpinionPageContent> createState() => _AddOpinionPageContentState();
}

class _AddOpinionPageContentState extends State<AddOpinionPageContent> {

  var movieName= '';
  var actorName= '';
  var rating = 3.0;
  @override
  Widget build(BuildContext context) {
    {
          return  Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
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
                   Slider(onChanged: (newValue) {
                    setState(() {
                      rating= newValue;
                    });
                   }, value: rating,
                   min: 0.0,
                   max: 10.0,
                   divisions: 10,
                   label: rating.toString(),),
                   ElevatedButton(onPressed: movieName.isEmpty || actorName.isEmpty ? null :  () 
                   { 
                    FirebaseFirestore.instance.collection('movies',).add({
                      'name':movieName,
                      'actor':actorName,
                      'rating': rating,

                    });
                    widget.onSave();
                   }, child: const Text('Add opinion'),),
                  
  ],
              ),
            ),
          );
        
  }
}}