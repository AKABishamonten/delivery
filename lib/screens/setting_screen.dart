import 'package:delivery/widgets/setting_menu.dart';
import 'package:delivery/widgets/signout_button.dart';
import 'package:flutter/material.dart';

class SettingProfile extends StatefulWidget {
  const SettingProfile({super.key});

  @override
  State<SettingProfile> createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
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
                "Account",
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
