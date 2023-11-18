import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SliversGap extends StatelessWidget {
  const SliversGap({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: CustomScrollView(
        slivers: [
          const SliverGap(20),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.blue),
          ),
          const SliverGap(20, color: Colors.black),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.red),
          ),
          const SliverGap(20, color: Colors.yellowAccent),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
