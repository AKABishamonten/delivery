import 'package:delivery/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextFormGlobal extends StatefulWidget {
  const TextFormGlobal({super.key});

  @override
  State<TextFormGlobal> createState() => _TextFormGlobalState();
}

class _TextFormGlobalState extends State<TextFormGlobal> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 10),
          alignment: Alignment.topLeft,
          child: Center(
            child: Text(
              'Sign In',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: Image.network(
                "https://img.icons8.com/office/256/google-logo.png",
                height: 25,
              ),
              label: Text(
                "Login with Google",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                context.read<AuthWithProvider>().googleLogin(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: Image.network(
                "https://www.freepnglogos.com/uploads/logo-facebook-png/logo-facebook-best-facebook-logo-icons-gif-transparent-png-images-9.png",
                height: 35,
                color: Colors.white,
              ),
              label: Text(
                "Login with Facebook",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                context.read<AuthWithProvider>().facebookLogin(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 100, 
          color: Colors.red,
          child: Image.network(''),
        )
      ],
    );
  }
}
