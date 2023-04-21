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
      appBar: AppBar(
        title: Text("Profile"), backgroundColor: Colors.orangeAccent,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SettingMenuWidget(),
          SignoutButtonWidget(),
        ],
      ),
    );
  }
}
