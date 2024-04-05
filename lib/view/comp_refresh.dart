import 'package:flutter/material.dart';

class CompRefresh extends StatelessWidget {
  final int itemCount;
  final Future<void> Function() onRefresh;
  final Widget Function(BuildContext context, int index) builder;

  const CompRefresh({
    super.key,
    required this.itemCount,
    required this.onRefresh,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 1개의 행에 항목을 3개씩
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        itemCount: itemCount,
        itemBuilder: builder,
      ),
    );
  }
}
