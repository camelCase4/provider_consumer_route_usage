import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_consumer/counterPage.dart';

class CountIncrease extends StatelessWidget {
  const CountIncrease({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final counter = context.read<CounterPageTest>();

        counter.countPlus();
      },
      child: const Text("Add!"),
    );
  }
}
