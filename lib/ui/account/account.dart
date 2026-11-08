import 'package:flutter/material.dart';

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
          children: [
            TextField(decoration: const InputDecoration(hintText: "Your Username ...", suffixIcon: const Icon(Icons.person_2_outlined)),
            onChanged: (String? value){},
            ),
            TextField(decoration: const InputDecoration(hintText: "Your Password ...", suffixIcon: const Icon(Icons.password_outlined)),
            onChanged: (String? value) {},
            ),
            TextField(decoration: const InputDecoration(hintText: "Your Email ...", suffixIcon: const Icon(Icons.email_rounded)),
            onChanged: (String? value){},
            )
          ],
        ),
      ),
    );
  }
}