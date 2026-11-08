import 'package:flutter/widgets.dart';

ValueNotifier<bool> isLoggedIn = ValueNotifier(false);

class Settings {
  Settings._();

  static const List<String> mainPageOptions = ["General", "Appearance"];

  static const Map<String, Function> mainPageOptionsHandler = {}; // List or Map of Functions for handling Each Setting Option
}