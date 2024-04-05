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
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        itemCount: itemCount,
        itemBuilder: builder,
      ),
    );
  }
}
