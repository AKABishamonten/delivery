import 'package:delivery/widgets/setting_menu.dart';
import 'package:delivery/widgets/signout_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomCenter,
              child: Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white, boxShadow: [BoxShadow(blurRadius: 4)]),
          ),
          SizedBox(height: 10,),
          SettingMenuWidget(),
          SignoutButtonWidget(),
        ],
      ),
    );
  }
}
