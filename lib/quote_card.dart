import 'package:flutter/material.dart';

import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final dynamic delete;
  const QuoteCard({Key? key, required this.quote, required this.delete})
      : super(key: key);

  // const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                quote.text,
                style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Text(
                quote.author,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
              ),
            ),
            const SizedBox(height: 8.0),
            IconButton(
              icon: const Icon(Icons.delete),
              iconSize: 30,
              tooltip: 'Delete quote',
              onPressed: delete,
              alignment: Alignment.topRight,
            )
          ],
        ),
      ),
    );
  }
}
