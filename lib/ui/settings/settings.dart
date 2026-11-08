import 'package:flutter/material.dart';
import 'package:hey/data/data.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(kToolbarHeight), child: SettingsPageAppBar()),
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

class SettingsPageBody extends StatelessWidget {
  const SettingsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: Settings.mainPageOptions.length,
        itemBuilder: (BuildContext context, int itemIndex){
           String item = Settings.mainPageOptions[itemIndex];

          return ListTile(
            title:  TextButton(onPressed: (){}, child: Text(item)),
          );
        },
      ),
    );
  }
}