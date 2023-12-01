import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0.0,
      ),

      body: const Center(
        child: Text('Welcome to the Settings page!'),
      ),


    );
  }
}
