import 'package:dont_worry/view/comp_refresh.dart';
import 'package:dont_worry/view/result_screen.dart';
import 'package:flutter/material.dart';

import '../model/data_random.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<int> pickedList;

  @override
  void initState() {
    super.initState();
    pickedList = RandomNumber.pickedRandom();
  }

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
        itemCount: pickedList.length,
        onRefresh: () async {
          RandomNumber.pickedRandom();
          setState(() {
            pickedList = RandomNumber.pickedRandom();
          });
        },
        builder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ResultScreen(
                  id: pickedList[index],
                ),
              ),
            );
          },
          child: LayoutBuilder(builder: (context, constraint) {
            final double maxH = constraint.maxHeight;
            return Column(
              children: [
                Text('${index + 1} : ${pickedList[index]}'),
                Container(
                  child: Image.asset(
                    'assets/images/card.png',
                    fit: BoxFit.contain,
                    height: maxH - 20,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
