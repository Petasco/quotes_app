import 'package:flutter/material.dart';
import 'qoute.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  const QuoteCard({super.key, required this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 35.0),
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
            const SizedBox(height: 15.0),

            Center(
              child: Text(quote.author,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}