import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'memes.dart';
import 'settings.dart';
import 'profile.dart';
import 'quotespage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }
  int selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    Widget selectedWidget() {
      switch (selectedIndex) {
        case 0:
          return const QuoteList();
        case 1:
          return const MemesLol();
        case 2:
          return const Profile();
        case 3:
          return const Settings();
        default:
          return Container(); // Handle any other case if needed
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Memes",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Elephant',
          ),
        ),
        //centerTitle: true,
        backgroundColor: Colors.grey,
        bottom: const PreferredSize(
          preferredSize: Size.zero,
          child: Text("Allow memes to take away your Stress", style: TextStyle(color: Colors.white),),
        ),
        // action tabs

        actions: [
          IconButton(
            icon: const Icon(Icons.settings, size: 25, color: Colors.black),
            onPressed: () {
              onItemTapped(3); // Navigate to Settings
            },
          ),
          IconButton(
            icon: const Icon(Icons.circle_notifications,
                size: 25, color: Colors.black),
            onPressed: () {
              onItemTapped(1); // Navigate to MemesLol
            },
          )
        ],
      ),
      body: selectedWidget(), // Show only the selected widget
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face_2_rounded),
            label: 'Memes',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Profile',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.red,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }
}