import 'package:bin2dec/screens/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Change ConsumerStatefulWidget to ConsumerWidget
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Binary to Decimal Converter'),
        centerTitle: true,
      ),
      body: const CalculatorScreen(),
    );
  }
}
