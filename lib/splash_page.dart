import 'package:flutter/material.dart';

import 'sign_in.dart';
import 'sign_up.dart';

class SplashPage extends StatefulWidget {

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Text('EverGreen Farm'),
          Image.asset('assets/AppWelcomeImage.jpeg',width: 350,height: 320,),
          TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
            icon: const Icon(Icons.login),
            label: const Text('Sign In'),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
            },
            icon: const Icon(Icons.app_registration),
            label: const Text('Sign up'),
          ),
        ],
      ),
    );
  }
}
