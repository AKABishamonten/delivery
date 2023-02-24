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
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text('Sign In', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text('Email or Phone Number', style: TextStyle(fontSize: 16,),),
            ),
            SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 50,
          padding: EdgeInsets.only(top: 3, left: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                )
              ]),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(border: InputBorder.none,) ,
          ),
        ),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.only(left: 20),
          alignment: Alignment.topLeft,
          child: Text('Password', style: TextStyle(fontSize: 16,),),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 50,
          padding: EdgeInsets.only(top: 3, left: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                )
              ]),
          child: TextField(
            controller: passwordController,
            decoration: InputDecoration(border: InputBorder.none,) ,
          ),
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.only(right: 20),
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: (){

            },child: const Text('Forgot Password',style: TextStyle(fontSize: 16, color: Colors.orangeAccent),),)
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent),
              child: Text('Sign In'),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(right: 20),
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: (){
              Navigator.pushNamed(context, "/Register");
            },child: const Text('Register',style: TextStyle(fontSize: 16, color: Colors.orangeAccent),),)
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 10, right: 15),
              child: Divider(color: Colors.grey
              )),
            ),
            Text("Or"),
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 15, right: 10),
              child: Divider(color: Colors.grey
              )),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  width: 2,
                  color: Colors.grey
                ),
              ),
              child: IconButton(onPressed: (){
                context.read<AuthWithProvider>().googleLogin(context);
              }, icon: Image.network('https://img.icons8.com/office/256/google-logo.png'))
            )
          ],
        )
      ],
    );
  }
}
