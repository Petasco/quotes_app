import 'package:flutter/material.dart';
import 'package:quotes_app/quotespage.dart';
import 'package:quotes_app/qoute.dart';
import 'package:quotes_app/contactme.dart';
import 'package:quotes_app/pages/MemeCard.dart';

class MemesLol extends StatefulWidget {
  const MemesLol({super.key});

  @override
  State<MemesLol> createState() => _MemesLolState();
}



class _MemesLolState extends State<MemesLol> {
  List<Meme> memes = [
    Meme(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
    Meme(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
    Meme(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
    Meme(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
    Meme(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
  ];

  Widget quoteTemplate(meme) {
    return MemeCard(meme: meme);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Memes",
        style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold, fontFamily: 'Georgia'),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
        bottom: const PreferredSize(
          preferredSize: Size.zero,
          child: Text("Let memes take away your stress"),
        ),
      ),

      body:  ListView(
        children: [
          Column(
            children: memes.map((meme) {
              return quoteTemplate(meme);
            }).toList(),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust as needed
              children: [
                Center(
                  child: Container(
                    width: 130,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const QuoteList()),
                        );
                      },
                      icon: Icon(Icons.navigate_before),
                      label: Text('Previous'),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 130,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MemesLol()),
                        );
                      },
                      icon: Icon(Icons.navigate_next),
                      label: Text('Next'),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contactme()),
                );
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.orange),
                  minimumSize: MaterialStateProperty.all(Size(300, 40))
              ),

              child: const Text(
                "Contact Me",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 50.0),
        ],
      ),




    );
  }
}
