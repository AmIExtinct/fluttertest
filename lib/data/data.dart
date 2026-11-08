import 'package:flutter/widgets.dart';

ValueNotifier<bool> isLoggedIn = ValueNotifier(false);

class IsCurrentPage{
  IsCurrentPage._();
  static bool settings = false;
}