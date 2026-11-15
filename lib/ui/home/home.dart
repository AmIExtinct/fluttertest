import 'package:flutter/material.dart';
import 'package:hey/data/data.dart' as Account;
import 'package:hey/ui/account/account.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Account.Status.isLoggedIn,
      builder: (BuildContext context, bool value, Widget? child) {
        if (value) {
          return AccountPage();
        } else {
          // Yet to be implemented
        }

        return const Text(
          "Something Probably Isn't Right ?",
          style: TextStyle(backgroundColor: Colors.red),
        );
      },
    );
  }
}
