import 'package:flutter/material.dart';
import 'package:hey/ui/settings/general/general.dart';
import 'package:hey/ui/settings/profile/profile.dart';

class Settings {
  Settings._();

  static const List<String> settingsRootPageOptions = ["Profile" ,"General"];

  static  Map<String, WidgetBuilder> settingsRootPageOptionsHandler = {
    "Profile": (context) => ProfileMainPage(),
    "General": (context) => GeneralPage()

  }; // List or Map of Functions for handling Each Setting Option
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
