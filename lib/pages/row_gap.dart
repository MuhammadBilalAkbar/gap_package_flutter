import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RowGap extends StatelessWidget {
  const RowGap({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(10, color: Colors.black, crossAxisExtent: 200),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              const Gap(10, color: Colors.amber, crossAxisExtent: 200),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              const Gap(10, color: Colors.grey, crossAxisExtent: 200),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              const Gap(10, color: Colors.pink, crossAxisExtent: 200),
            ],
          ),
        ),
      ),
    );
  }
}
