import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ColumnGap extends StatelessWidget {
  const ColumnGap({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            const Gap(
              10,
              color: Colors.amber,
              crossAxisExtent: 200,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            // const Gap(10),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
