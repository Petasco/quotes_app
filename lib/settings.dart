import 'package:flutter/material.dart';

import 'contactme.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Settings",
          style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold, fontFamily: 'Georgia'),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),

      body: SafeArea(child: const Center(child: Text('Settings'))),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text('Settings',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: const Text('Account'),
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
              title: const Text('Dark Theme'),
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
              title: const Text('Share'),
              leading: const Icon(
                Icons.share,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Rate Us'),
              leading: const Icon(
                Icons.favorite,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help & Support'),
              leading: const Icon(
                Icons.watch,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(
                Icons.exit_to_app,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About'),
              leading: const Icon(
                Icons.question_mark_rounded,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 50.0,),
            ListTile(
              title: const Text('By: Petasco'),
              leading: const Icon(
                Icons.developer_mode_rounded,
              ),
              trailing: IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  // Add your logic or navigation code here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Contactme()),
                  );
                },
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contactme()),
                );
              },
            ),
          ],
        ),
      ),


    );
  }
}
