import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
  }

  void decrease() {
    _count--;
  }

  void reset() {
    _count = 0;
  }
}
