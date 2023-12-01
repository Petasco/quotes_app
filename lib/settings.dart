import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),

      body: const Center(child: Text('Settings')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text('Settings'),
            ),
            ListTile(
              title: const Text('Item 1'),
              leading: const Icon(
                Icons.alarm,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.message,
              ),
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Posts'),
              leading: const Icon(
                Icons.email,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Privacy Policy'),
              leading: const Icon(
                Icons.phone,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Security'),
              leading: const Icon(
                Icons.camera,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(
                Icons.watch,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help & Support'),
              leading: const Icon(
                Icons.exit_to_app,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),


    );
  }
}
