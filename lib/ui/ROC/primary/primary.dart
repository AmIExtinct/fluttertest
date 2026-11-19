import 'package:flutter/material.dart';
import 'package:hey/data/data.dart';

class PrimaryPage extends StatelessWidget {
  const PrimaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: PrimaryPageAppBar(),
      ),
    );
  }
}

class PrimaryPageAppBar extends StatelessWidget {
  const PrimaryPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      actions: [
        const IconButton(
          onPressed: ProfileButtonCallback,
          icon: Icon(Icons.person_2),
        ),
      ],
    );
  }

  static void ProfileButtonCallback() {}
}

class PrimaryPageBody extends StatelessWidget {
  const PrimaryPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(itemCount: Data.getPeopleList().length, 
        itemBuilder: (BuildContext context, int index){
          Map <String, dynamic> person = Data.getPeopleList()[index];
          return ListTile(
            title: Text(person['Name']),
            subtitle: Text(person['Description']),
            onTap: () => onPersonTileTapped(context),
          );
        },
      ),
    );
  }

  static void onPersonTileTapped(BuildContext context){
    
  }
}
