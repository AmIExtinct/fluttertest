import 'package:flutter/material.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: GeneralPageAppBar(),
      ),
    );
  }
}

class GeneralPageAppBar extends StatelessWidget {
  const GeneralPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text("General"), centerTitle: true);
  }
}
