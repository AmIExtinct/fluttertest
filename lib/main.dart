import 'package:flutter/material.dart';
import 'package:hey/ui/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   const MyHomePage({super.key});
   
   @override
   Widget build(BuildContext context){
      return Scaffold(
         appBar: AppBar(
            title: const Text("JMsg"),
            actions: [
               IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                           return Profile();
                                           })));
                     },
               ),
            ],
         ),
      );
      
}}
