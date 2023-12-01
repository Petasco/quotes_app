import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),

      body: const Center(
        child: Text('Welcome to the Profile page!'),
      ),


    );
  }
}
