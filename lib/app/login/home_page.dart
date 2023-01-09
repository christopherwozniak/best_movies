import 'package:best_movies/app/home/add_opinion/add_opinion_page_content.dart';
import 'package:best_movies/app/home/movies/movies_page_content.dart';
import 'package:best_movies/app/home/my_account/my_account_page_content.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Best Movies'),
      ),
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return const MoviesPageContent();
        }
        if (currentIndex == 1) {
          return  AddOpinionPageContent(onSave: () {
            setState(() {
              
            currentIndex = 0;
            });
          });
        }

        return MyAccountPageContent(email: widget.user.email);
      }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Opinions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add), label: 'Add new opinion'),
          BottomNavigationBarItem(
              icon: Icon(Icons.mosque), label: 'My account'),
        ],
      ),
    );
  }
}





