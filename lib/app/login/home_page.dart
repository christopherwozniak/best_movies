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
          return const AddOpinionPageContent();
        }

        return MyAccountPageContent(widget: widget);
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

class MyAccountPageContent extends StatelessWidget {
  const MyAccountPageContent({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final HomePage widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Jesteś zalogowany jako ${widget.user.email}',
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          child: const Text('Log out'),
        ),
      ],
    );
  }
}

class AddOpinionPageContent extends StatelessWidget {
  const AddOpinionPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Dwa'),
    );
  }
}

class MoviesPageContent extends StatelessWidget {
  const MoviesPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Jeden'),
    );
  }
}
