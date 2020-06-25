import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppState extends ChangeNotifier {
  int selectedCategory = 0;
  void updateCategory(int selectedCategory) {
    this.selectedCategory = selectedCategory;
    notifyListeners();
  }
}
