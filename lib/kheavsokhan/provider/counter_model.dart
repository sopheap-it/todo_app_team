import 'package:flutter/foundation.dart';

class CounterModel with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void counter() {
    _count++;
    notifyListeners();  // Notify widgets that are listening to changes
  }
}
