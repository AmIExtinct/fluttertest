import 'package:flutter/material.dart';
import 'package:hey/ui/account/starter.dart';
import 'package:hey/ui/data/login.dart' as account;

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
      home: ValueListenableBuilder(valueListenable: account.isLoggedIn, builder: (context, value, child){
        if(account.isLoggedIn.value){
          return Container(); // Show If User Is Logged In
        }
        if(!account.isLoggedIn.value){
          return LoginPage();
        }
        return const Text("Some Strange Error ..");
      }),
    );
  }
}

