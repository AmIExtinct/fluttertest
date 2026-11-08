import 'package:flutter/material.dart';
import 'package:hey/ui/home/home.dart';

void main() {
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.light,
      ),

      darkTheme: ThemeData(
         brightness: Brightness.dark,
         primarySwatch: Colors.indigo,
      ),
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}

