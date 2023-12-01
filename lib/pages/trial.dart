import 'package:flutter/material.dart';

class LDrawer extends StatelessWidget {
  const LDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(title: const Text('Navigation Drawer')),
        body: const Center(child: Text('My Page!')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                child: Text('Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
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
                title: const Text('Item 2'),
                leading: const Icon(
                  Icons.email,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 3'),
                leading: const Icon(
                  Icons.phone,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 4'),
                leading: const Icon(
                  Icons.camera,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 5'),
                leading: const Icon(
                  Icons.watch,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 6'),
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
      ),
    );
  }
}