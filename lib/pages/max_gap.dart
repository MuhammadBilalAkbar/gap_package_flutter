import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MaxGapWidget extends StatelessWidget {
  const MaxGapWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Column(
        children: <Widget>[
          Gap.expand(20, color: Colors.red),
          Gap(80),
          Gap.expand(20, color: Colors.red),
          MaxGap(2000),
          Gap.expand(20, color: Colors.red),
          Row(
            children: <Widget>[
              Gap(20, color: Colors.green, crossAxisExtent: 20),
              Gap(50),
              Gap(20, color: Colors.green, crossAxisExtent: 20),
            ],
          ),
          Gap.expand(200, color: Colors.blue),
        ],
      ),
    );
  }
}
