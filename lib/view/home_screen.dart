import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TS = TextStyle();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Done Worry',
          style: TS.copyWith(fontWeight: FontWeight.w900),
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
