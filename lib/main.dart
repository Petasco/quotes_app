import 'package:flutter/material.dart';
import 'qoute.dart';
import 'quote_card.dart';

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
    Quote(text: "Be yourself, everyone is already taken", author: "Oscar Wild"),
    Quote(text: "Success has many fathers but failure has none", author: "Peter Diyouh"),
    Quote(text: "The truth is rarely pure and never simple", author: "Oscar Wild"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "The truth is rarely pure and never simple", author: "Oscar Wild"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "The truth is rarely pure and never simple", author: "Oscar Wild"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "The truth is rarely pure and never simple", author: "Oscar Wild"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "The truth is rarely pure and never simple", author: "Oscar Wild"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "The truth is rarely pure and never simple", author: "Oscar Wild"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "The truth is rarely pure and never simple", author: "Oscar Wild"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
  ];

  Widget quoteTemplate(quote){
      return QuoteCard(quote: quote);
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
        ],
      )
    );
  }
}



