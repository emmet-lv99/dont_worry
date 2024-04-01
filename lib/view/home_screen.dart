import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '돈-워리 / 비-해피',
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),
      body: Center(
        child: Text(
          '돈워리',
          style: TextStyle(
              fontSize: 50,
              fontFamily: 'pretendard',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
