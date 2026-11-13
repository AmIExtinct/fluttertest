import 'package:flutter/material.dart';
import 'package:hey/ui/settings/settingsoptions.dart';

class ProfileMainPage extends StatelessWidget {
  const ProfileMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ProfileMainPageBody(),
    );
  }
}


class ProfileMainPageBody extends StatefulWidget {
  const ProfileMainPageBody({super.key});

  @override
  State<ProfileMainPageBody> createState() => _ProfileMainPageBody(); 
}

class _ProfileMainPageBody extends State<ProfileMainPageBody> {
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const IconButton(onPressed: Profile.ProfileIconButtonHandler, icon: Icon(Icons.person)),
            const TextField(decoration: InputDecoration(hintText: "Your Name ..."),
              maxLines: 1, maxLength: 55,
            )
          ],
        )
      ),
    );
  }
}
