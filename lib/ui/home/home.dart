import 'package:flutter/material.dart';
import 'package:hey/data/data.dart' as account;
import 'package:hey/ui/account/account.dart';
import 'package:hey/ui/ROC/primary/primary.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (!account.Status.isLoggedIn) {
      return AccountPage();
    } else if (account.Status.isLoggedIn) {
      return PrimaryPage();
    }

    return const SomethingWrong();
  }
}

class SomethingWrong extends StatelessWidget {
  const SomethingWrong({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Text("Something Went Wrong ...");
  }
}
