import 'package:flutter/material.dart';
import 'package:quotes_app/qoute.dart';
import 'package:quotes_app/quote_card.dart';
import 'package:quotes_app/pages/nextquotes.dart';

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}



class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: "In war,to be a winner you chase. You don't run, so chasing your dreams makes you a winner and running away from failures makes you a loser",
        author: "Diyouh Peter"),
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
    Quote(text: "Life is a mandatory school for the living. Everyone is a learner because every day, life offers mandatory lessons.",
        author: "Gift Gugu Mona"),
    Quote(text: "Life is easy when you live among people who do not make things difficult for you",
        author: "Gift Gugu Mona"),
    Quote(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
    Quote(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
    Quote(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
    Quote(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
    Quote(text: "Shortcuts can cut your life short. Avoid them at all costs",
        author: "Gift Gugu Mona"),
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text("Quotes",
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Georgia'),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),

      body:  SafeArea(
        child: ListView(
          children: [
            Column(
              children: quotes.map((quote) {
                return quoteTemplate(quote);
              }).toList(),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust as needed
                children: [
                  /*
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MemesLol()),
                        );
                      },
                      icon: Icon(Icons.navigate_before),
                      label: Text('Previous'),
                    ),
                  ), */
                  Center(
                    child: Container(
                      width: 180,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const NextQuoteList()),
                          );
                        },
                        label: Text('Next'),
                        icon: Icon(Icons.navigate_next),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),




    );
  }
}
