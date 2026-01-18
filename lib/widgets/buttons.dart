import 'package:bin2dec/providers/converter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonsPanel extends ConsumerWidget {
  const ButtonsPanel({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: [
          ElevatedButton(
            onPressed: () {
              ref.read(converterProvider.notifier).addDigit('0');
            },
            child: const Text('0'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(converterProvider.notifier).addDigit('1');
            },
            child: const Text('1'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(converterProvider.notifier).clearDigits();

              ref.read(decimalResultProvider.notifier).state = 0;
            },
            child: const Text('Clear'),
          ),
          ElevatedButton(
            onPressed: () {
              final result = ref.read(converterProvider.notifier).decimelResult;

              ref.read(decimalResultProvider.notifier).state = result;
            },
            child: const Text('Convert'),
          ),
        ],
      ),
    );
  }
}
