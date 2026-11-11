import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Status {
  static ValueNotifier<bool> isLoggedIn = ValueNotifier(false);
  static ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.system);
}
