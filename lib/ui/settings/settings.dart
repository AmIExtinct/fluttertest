import 'package:flutter/material.dart';


class BuildSettings extends StatelessWidget{
   const BuildSettings({super.key});

     @override
     Widget build(BuildContext context) {
         return Scaffold(
            appBar: AppBar(
              title: const Text("Settings"),
              centerTitle: true,

              actions: [
                IconButton(onPressed: () {}, icon: Util.getbrightnessIcon(context))
              ],
            ),
            body: ListTile(
            title: const Text("Something"),
            leading: const Text("Will Appear?"),
            trailing: const Text("Is This Something?"),
            ),
             
         );
     }
}

class Util {
  static Widget getbrightnessIcon(BuildContext context){
    return Icon(
      Theme.of(context).brightness == Brightness.dark ? Icons.light_mode : Icons.dark_mode
    );
  }
}
