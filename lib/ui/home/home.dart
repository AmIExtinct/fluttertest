import 'package:flutter/material.dart';
import 'package:hey/data/login.dart' as Account;
import 'package:hey/ui/account/account.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(valueListenable: Account.isLoggedIn, 
        builder: (context, value, child){
          if(value == false) { return AccountPageBody(); }
          
          return const Text("Something Probably Went Wrong ...");
        }),
    );
  }
}