import 'package:flutter/material.dart';
import 'package:hey/data/data.dart';
import 'package:hey/ui/settings/settings.dart';

class AccountPageAppBar extends StatelessWidget {
  const AccountPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text("Boo"),

      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SettingsPage();
                },
              ),
            );
          },
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}

class AccountPageBody extends StatefulWidget {
  const AccountPageBody({super.key});

  @override
  State<AccountPageBody> createState() => _AccountPageBodyState();
}

class _AccountPageBodyState extends State<AccountPageBody> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: "Your Username ...",
                suffixIcon: Icon(Icons.person_2_outlined),
              ),
              maxLength: 100,
              maxLines: 1,
              onChanged: (String? value) {},
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Your Password ...",
                suffixIcon: Icon(Icons.password_outlined),
              ),
              maxLength: 256,
              maxLines: 1,
              obscureText: true,
              onChanged: (String? value) {},
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Your Email ...",
                suffixIcon: Icon(Icons.email_rounded),
              ),
              maxLength: 300,
              maxLines: 1,
              onChanged: (String? value) {},
            ),

            TextButton(
              onPressed: () {},
              child: const Text("Create An Account ..."),
            ),
            TextButton(onPressed: () {}, child: const Text("Login Instead")),
          ],
        ),
      ),
    );
  }
}
