import 'package:flutter/material.dart';

class MemesLol extends StatelessWidget {
  const MemesLol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Memes"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
        bottom: const PreferredSize(
          preferredSize: Size.zero,
          child: Text("Let memes take away your stress"),
        ),
      ),


      body: const Center(
        child: Text('Welcome to the Memes page!'),
      ),


    );
  }
}
