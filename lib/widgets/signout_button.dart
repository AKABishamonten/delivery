import 'package:delivery/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class SignoutButtonWidget extends StatelessWidget {
  const SignoutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      width: double.infinity,
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          onPressed: () {
            context.read<AuthWithProvider>().signOut(context);
          },
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.black,
          ),
          label: Text(
            'Sign out',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          )),
    );
  }
}
