import 'package:flutter/material.dart';
import 'package:hey/ui/settings/settings.dart';

class LoginPage extends StatelessWidget {
   const LoginPage({super.key});
   
   @override
   Widget build(BuildContext context){
      return Scaffold(
         appBar: AppBar(
            title: const Text("JMsg"),
            centerTitle: true,
            actions: [
               IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: ((context) {
                          return BuildSettings();
                      })));
                   },
               ),
            ],
         ),
      );
      
}}
