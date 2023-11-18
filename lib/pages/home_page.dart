import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gap_package_flutter/pages/row_gap.dart';
import 'package:gap_package_flutter/pages/column_gap.dart';
import 'package:gap_package_flutter/pages/list_view_gap.dart';
import 'package:gap_package_flutter/pages/max_gap.dart';
import 'package:gap_package_flutter/pages/slivers_gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
          child: Column(
            children: [
              const Gap(20),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ColumnGap(title: 'Gap in Column'),
                  ),
                ),
                child: const Text('Gap in Column'),
              ),
              const Gap(20),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowGap(title: 'Gap in Row'),
                  ),
                ),
                child: const Text('Gap in Row'),
              ),
              const Gap(20),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewGap(
                      title: 'Gap in ListView',
                    ),
                  ),
                ),
                child: const Text('Gap in ListView'),
              ),
              const Gap(20),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SliversGap(
                      title: 'Gap in Slivers',
                    ),
                  ),
                ),
                child: const Text('Gap in Slivers'),
              ),
              const Gap(20),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MaxGapWidget(
                      title: 'MaxGap Widget',
                    ),
                  ),
                ),
                child: const Text('MaxGap Widget'),
              ),
            ],
          ),
        ),
      );
}
