import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
   const HomePage({super.key});
   
   @override
   Widget build(BuildContext context){
      return Scaffold(
         appBar: AppBar(
            title: const Text("JMsg"),
            actions: [
               IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: ((context) {
                               return ProfileBuild();
                               })));
                   },
               ),
            ],
         ),
      );
      
}}

class ProfileBuild extends StatelessWidget{
   const ProfileBuild({super.key});

     @override
     Widget build(BuildContext context) {
         return Scaffold(
            body: ListTile(
            title: const Text("Something"),
            leading: const Text("Will Appear?"),
            trailing: const Text("Is This Something?"),
            ),
             
         );
     }
}
