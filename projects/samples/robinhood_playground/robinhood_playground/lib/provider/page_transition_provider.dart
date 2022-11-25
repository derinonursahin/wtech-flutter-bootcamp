import 'package:flutter/material.dart';

class PageTransicitionProvider extends ChangeNotifier {
  int currentIndex = 0;

  void changeTransicition(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

// Loglamak için kullanılır. Daha verimli kullanılıyor with ile kullanıdlığı zaman ss aldım