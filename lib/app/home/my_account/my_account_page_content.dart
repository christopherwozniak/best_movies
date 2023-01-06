import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';




class MyAccountPageContent extends StatelessWidget {
  const MyAccountPageContent({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Jesteś zalogowany jako $email',
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
