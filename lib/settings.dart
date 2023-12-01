import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  /*
  int selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    // trying to see something

    switch (selectedIndex) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => QuoteList()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => MemesLol()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
        break;
      case 4:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
        break;
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),

      body: const Center(
        child: Text('Welcome to the Settings page!'),
      ),

      /*
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face_2_rounded),
            label: 'Memes',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Profile',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],

        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        onTap: onItemTapped,

      ),*/

    );
  }
}
