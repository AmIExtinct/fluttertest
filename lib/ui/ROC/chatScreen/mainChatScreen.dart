import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainChatScreen extends StatelessWidget {
  const MainChatScreen({super.key});

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        
      );
    }
}

class MainChatScreenAppBar extends StatelessWidget {
   final String name;
  const MainChatScreenAppBar({super.key, required this.name});

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return AppBar(
      title:  Text(name),
      );
    }
}