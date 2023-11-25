import 'package:flutter/material.dart';
import 'qoute.dart';

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
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "No matter how long you live, heaven is till not assured", author: "Petasco"),
    Quote(text: "The truth is rarely pure and never simple", author: "Oscar Wild"),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 6.0),

            Text(quote.author,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
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

      body: Column(
        children: quotes.map((quote) {
          return quoteTemplate(quote);
        }).toList(),
      ),
    );
  }
}


