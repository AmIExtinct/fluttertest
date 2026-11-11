import 'package:flutter/material.dart';
import 'package:hey/ui/settings/settingsoptions.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(kToolbarHeight), child: SettingsPageAppBar()),
      body: SettingsRootPageBody(),
    );
  }
}


class SettingsPageAppBar extends StatefulWidget {
  const SettingsPageAppBar({super.key});

  @override
  State<SettingsPageAppBar> createState() => _SettingsPageAppBarState();
}

class _SettingsPageAppBarState extends State<SettingsPageAppBar> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Settings"),
      centerTitle: true,

      actions: [
        IconButton(onPressed: changeTheme, icon: Icon(Icons.light_mode))
      ],
    );
  }


  static void changeTheme() {}
}

class SettingsRootPageBody extends StatelessWidget {
  const SettingsRootPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: ListView.builder(
        itemCount: Settings.settingsRootPageOptions.length,
        itemBuilder: (BuildContext context, int itemIndex){
           String item = Settings.settingsRootPageOptions[itemIndex];

          return ListTile(
            title:  TextButton(onPressed: (){}, child: Text(item)),
            
          );
        },
      ),
    );
  }
}