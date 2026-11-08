import 'package:flutter/material.dart';
import 'package:hey/data/data.dart';

class AccountPageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text("Boo"),

      actions: [
         IconButton(onPressed: _onSettingsPressed, icon: Icon(Icons.settings))
      ],
    );
  }


  static void _onSettingsPressed(){ IsCurrentPage.settings = !IsCurrentPage.settings; }
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
          children: [
            TextField(decoration: const InputDecoration(hintText: "Your Username ...", suffixIcon: const Icon(Icons.person_2_outlined)),
            maxLength: 100,
            maxLines: 1,
            onChanged: (String? value){},
            ),
            TextField(decoration: const InputDecoration(hintText: "Your Password ...", suffixIcon: const Icon(Icons.password_outlined)),
            maxLength: 256,
            maxLines: 1,
            onChanged: (String? value) {},
            ),
            TextField(decoration: const InputDecoration(hintText: "Your Email ...", suffixIcon: const Icon(Icons.email_rounded)),
            maxLength: 300,
            maxLines: 1,
            onChanged: (String? value){},
            ),

            TextButton(onPressed: (){}, child: const Text("Create An Account ...")),
            TextButton(onPressed: (){}, child: const Text("Login Instead"))
          ],
        ),
      ),
    );
  }
}