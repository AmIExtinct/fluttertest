import 'package:flutter/material.dart';

class Status {
  static bool isLoggedIn = false;
  static ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(
    ThemeMode.system,
  );
}
