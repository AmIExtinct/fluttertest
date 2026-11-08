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
         body: LoginForm(),
      );
      
}}

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginForm(); 
}

class _LoginForm extends State<LoginForm> {
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          TextField(decoration: const InputDecoration(hintText: "Email", border: OutlineInputBorder()) ),
          TextField(decoration: const InputDecoration(hintText: "Password ...", border: OutlineInputBorder()) ),

          SizedBox(height: 12,),

           TextButton(onPressed: () { }, child: Text("Create An Account Instead ..."))
        ],
      ),     
    );
  }
}

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  @override
  Widget build(BuildContext context){
    return Container();
  }
}

