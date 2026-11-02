import 'package:flutter/material.dart';
import 'package:hey/ui/settings.dart';

void main() {
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

