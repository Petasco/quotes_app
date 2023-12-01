import 'package:flutter/material.dart';

class MemesLol extends StatelessWidget {
  const MemesLol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Memes"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0.0,
      ),

      body: const Center(
        child: Text('Welcome to the Memes page!'),
      ),


    );
  }
}
