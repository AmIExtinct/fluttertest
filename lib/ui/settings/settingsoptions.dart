import 'package:flutter/material.dart';

class Settings {
  Settings._();

  static const List<String> settingsRootPageOptions = ["Profile" ,"General", "Appearance", "Privacy"];

  static const Map<String, Function> settingsRootPageOptionsHandler = {}; // List or Map of Functions for handling Each Setting Option
}

class SettingsGeneralPage extends StatelessWidget {
  const SettingsGeneralPage({super.key});

  @override
  Widget build(BuildContext context){
    return Container();
  }

}

class Profile {
  Profile._();

  static void ProfileIconButtonHandler(){

  }
}