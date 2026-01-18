import 'package:bin2dec/providers/converter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultPanel extends ConsumerWidget {
  const ResultPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> binaryList = ref.watch(converterProvider);
    final int decimalValue = ref.watch(decimalResultProvider);
    final String displayText = binaryList.isEmpty ? '0' : binaryList.join('');

    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              const Text('Binary Input:'),
              SizedBox(height: 20),
              Text(
                displayText,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 50),
              const Text('Decimal Result:'),
              SizedBox(height: 20),
              Text(
                '$decimalValue',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
