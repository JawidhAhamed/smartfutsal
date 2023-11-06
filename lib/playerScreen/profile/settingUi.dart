import 'package:flutter/material.dart';
import 'package:smartfutsal/playerScreen/constants.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 24, 24, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 24, 24, 1),
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
        children: <Widget>[
          SizedBox(height: 20.0),
          ProfileSection(),
          SizedBox(height: 20.0),
          SettingContainer(
            ic: Icon(Icons.notifications),
            title: 'Notification Settings',
            subtitle: 'Configure notification preferences',
          ),
          SizedBox(height: 5.0),
          Container(
            child: SettingContainer(
              ic: Icon(Icons.account_balance_rounded),
              title: 'Account Settings',
              subtitle: 'Manage your account information',
            ),
          ),
          SizedBox(height: 5.0),
          SettingContainer(
            ic: Icon(Icons.privacy_tip),
            title: 'Privacy Setting',
            subtitle: 'Manage privacy preferences',
          ),
          SizedBox(height: 5.0),
          SettingContainer(
            ic: Icon(Icons.security),
            title: 'General Settings',
            subtitle: 'Adjust app behavior',
          ),
          SizedBox(height: 5.0),
          SettingContainer(
            ic: Icon(Icons.privacy_tip),
            title: 'Appearance Settings',
            subtitle: 'Customize app themes',
          ),
          SizedBox(height: 5.0),
          SettingContainer(
            ic: Icon(Icons.security),
            title: 'Security Settings',
            subtitle: 'Enhance account security',
          ),
          SizedBox(height: 5.0),
          SettingContainer(
            ic: Icon(Icons.security),
            title: 'About App',
            subtitle: 'View app information and version',
          ),
        ],
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40.0,
          backgroundImage: AssetImage(prfl), // Replace with your image
        ),
        SizedBox(height: 10.0),
        Text('Team Futsal', style: TextStyle(color: Colors.white)),
        Text('teamfutsal@gmail.com', style: TextStyle(color: Colors.white)),
        SizedBox(height: 20.0),
      ],
    );
  }
}

class SettingContainer extends StatelessWidget {
  final Icon ic;
  final String title;
  final String subtitle;

  SettingContainer(
      {required this.ic, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(15.0),
          // border: Border.all(),
        ),
        child: Row(
          children: [
            ic,
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0))),
                Text(subtitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 135, 135, 135))),
              ],
            ),
          ],
        ));
  }
}
