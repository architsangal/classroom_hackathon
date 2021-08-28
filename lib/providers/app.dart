import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  bool isLoading = true;

  changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}