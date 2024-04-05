import 'package:dont_worry/view/comp_refresh.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

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
      body: CompRefresh(
        itemCount: 10,
        onRefresh: () async => print('refresh!'),
        builder: (context, index) => Text('10'),
      ),
    );
  }
}
