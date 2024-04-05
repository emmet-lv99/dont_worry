import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int id;
  const ResultScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    const TS = TextStyle();
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Text(
          id.toString(),
        ),
      ),
    );
  }
}
