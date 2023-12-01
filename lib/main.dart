import 'package:flutter/material.dart';
import 'qoute.dart';
import 'quote_card.dart';
import 'contactme.dart';
import 'memes.dart';
import 'settings.dart';
import 'profile.dart';

void main() {
  runApp( const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});


  @override
  State<QuoteList> createState() => _QuoteListState();
}



class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: "It is so sad that you need have sense to know what is sensible",
        author: "Petasco"),
    Quote(
        text: "Life is like riding a bicycle. To keep your balance, you must keep moving.",
        author: "Albert Einstein"),
    Quote(
        text: "If I cannot do great things, I can do small things in a great way.",
        author: "Martin Luther King, Jr"),
    Quote(text: "If you see someone without a smile, give 'em yours!",
        author: "Dolly Parton"),
    Quote(text: "If you cannot do great things, do small things in a great way",
        author: "Napoleon Hill"),
    Quote(
        text: "Know the difference between enjoying your youth and destroying your future",
        author: "Nelson Mandela"),
    Quote(text: "The secret to getting ahead is getting started",
        author: "Mark Twain"),
    Quote(
        text: "Wealth is not about having a lot of money; it’s about having a lot of options",
        author: "Chris Rock"),
    Quote(text: "Money is a terrible master but an excellent servant",
        author: "Phineas Taylor Barnum"),
    Quote(
        text: "The time making money should be greater than the time that you are spending money",
        author: "Sophia Amoruso"),
    Quote(
        text: "You only have so many hours in a day, let others make the money for you!",
        author: "Nick Haase"),
    Quote(
        text: "Formal education will make you a living; self-education will make you a fortune",
        author: "Jim Rohn"),
    Quote(
        text: "The longer you're not taking action the more you're losing money",
        author: "Carrie Wilkerson"),
    Quote(
        text: "Expect the best. Prepare for the worst. Capitalize on what comes.",
        author: "Zig Ziglar"),
    Quote(
        text: "Don't let money run your life, let money help you run your life better",
        author: "John Rampton"),
    Quote(
        text: "When you compete with others in life, you miss the chance to complete your own race with grace.",
        author: "Gift Gugu Mona"),
    Quote(
        text: "Don't think money does everything or you are going to end up doing everything for money",
        author: "Voltaire"),
    Quote(
        text: "Life is a one-way trip with no return ticket. Always remember that you are in transit",
        author: "Gift Gugu Mona"),
    Quote(
        text: "No matter the difficulties you face, do not be a difficult person. Choose to make life easy for others.",
        author: "Gift Gugu Mona"),
    Quote(
        text: "Not everything will make sense in life; that does not mean you should accept nonsense",
        author: "Gift Gugu Mona"),
    Quote(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
    Quote(
        text: "Never let the tragedies of life transform you into a human tragedy.",
        author: "Gift Gugu Mona"),
    Quote(
        text: "Sometimes life will make you smile, and other times it will make you frown. Life has its ups and downs. Yours is to make every day count.",
        author: "Gift Gugu Mona"),
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }
  int selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
    QuoteList(),
    MemesLol(),
    Profile(),
    Settings(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Awesome Quotes App",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: ListView(
        children: [
          Column(
            children: quotes.map((quote) {
              return quoteTemplate(quote);
            }).toList(),
          ),
          const Center(
            child: Text("Designed By: Petasco",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contactme()),
                );
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.deepOrange)
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
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,

      ),
    );
  }
}
