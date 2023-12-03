import 'package:flutter/material.dart';
import 'package:quotes_app/qoute.dart';

class MemeCard extends StatelessWidget {
  final Meme meme;
  const MemeCard({super.key, required this.meme});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 35.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(meme.text,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 15.0),

            Center(
              child: Text(meme.author,
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