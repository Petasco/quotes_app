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

      body: GridView.count(crossAxisCount: 2,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 50,
        mainAxisSpacing: 50,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: BackButton(
              onPressed: (){},
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            child: BackButton(
              onPressed: (){},
            ),
          ),
        ],
      ),


    );
  }
}
