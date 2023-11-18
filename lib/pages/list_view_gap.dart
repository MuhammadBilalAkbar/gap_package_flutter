import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListViewGap extends StatelessWidget {
  const ListViewGap({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.separated(
        itemCount: Colors.primaries.length,
        itemBuilder: (context, index) => Container(
          width: 100,
          height: 100,
          color: Colors.primaries[index],
        ),
        separatorBuilder: (context, index) =>
            const Gap(20, color: Colors.black),
      ),
    );
  }
}
