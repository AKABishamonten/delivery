import 'package:flutter/material.dart';

class SettingMenuWidget extends StatelessWidget {
  const SettingMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    'Change Password',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Text(
                    'Content Setting',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Text(
                    'Language',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Text(
                    'Privacy and Security',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
