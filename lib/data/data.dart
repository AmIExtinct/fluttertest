import 'package:flutter/material.dart';

class Status {
  static bool isLoggedIn = false;
  static ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(
    ThemeMode.system,
  );
}

class Data {
  static const List<Map<String, dynamic>> ofPeople = [
    {"Profile": Null, "Name": "Cutie Pie", "Description": "Shiba Inu"},
  ];

  static List getPeopleList() => ofPeople;
}
