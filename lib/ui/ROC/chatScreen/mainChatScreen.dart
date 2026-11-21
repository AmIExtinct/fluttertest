import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainChatScreen extends StatelessWidget {
  final String name;
  const MainChatScreen({super.key, required this.name});

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(kToolbarHeight), child: MainChatScreenAppBar(name: name,)),
      );
    }
}

class MainChatScreenAppBar extends StatelessWidget {
   final String name;
  const MainChatScreenAppBar({super.key, required this.name});

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return AppBar(
      title:  Text(name),
      );
    }
}


class MainChatScreenBody extends StatelessWidget {
  const MainChatScreenBody({super.key});
  
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        child: Column(
          children: [
            MessageArea(),
            const InputMessageBox()
            
          ],
        ),
        
      );
    } 
    
}

class MessageArea extends StatefulWidget {
  const MessageArea({super.key});

  @override
    State<StatefulWidget> createState() => _MessageAreaState();
}

class _MessageAreaState extends State<MessageArea> {

  @override
    Widget build(BuildContext context) {
      return Expanded(
        child: ListView.builder(
          itemCount: null,
          itemBuilder: (BuildContext context, int index){
            return const Text("hey");
          })
      );
    }
}

class InputMessageBox extends StatelessWidget {
  const InputMessageBox({super.key});

  @override
    Widget build(BuildContext context) {
      return TextField(
        autofocus: true,
        decoration: const InputDecoration(hintText: "Your Cute Messsage ...",
          suffix: const IconButton(onPressed: MessageSend, icon: Icon(Icons.send))
        ),
      );
    }

    static void MessageSend(){}
}
