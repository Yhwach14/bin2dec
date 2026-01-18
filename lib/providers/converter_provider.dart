import 'package:flutter_riverpod/legacy.dart';

List<String> binarydigits = [];

class ConverterNotifier extends StateNotifier<List<String>> {
  ConverterNotifier() : super(binarydigits);

  void addDigit(String digit) {
    state = [...state, digit];
  }

  void clearDigits() {
    state = [];
  }

  int get decimelResult {
    if (state.isEmpty) {
      return 0;
    }
    int total = 0;
    int length = state.length;
    for (int i = 0; i < length; i++) {
      int digit = int.parse(state[length - 1 - i]);
      total += digit * (1 << i);
    }
    return total;
  }
}

final converterProvider =
    StateNotifierProvider<ConverterNotifier, List<String>>((ref) {
      return ConverterNotifier();
    });
final decimalResultProvider = StateProvider<int>((ref) => 0);
