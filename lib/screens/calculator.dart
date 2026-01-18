import 'package:bin2dec/widgets/buttons.dart';
import 'package:bin2dec/widgets/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorScreen extends ConsumerWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [const ResultPanel(), const ButtonsPanel()]);
  }
}
