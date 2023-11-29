import 'package:flutter/material.dart';
import 'package:navigation_bar/contacts.dart';
import 'package:navigation_bar/details.dart';
import 'package:navigation_bar/settngs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer and Navigation'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Govind Kumar Yadav'),
              accountEmail: Text('robertgovind@gmail.com'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage())),
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Settings(),
                ),
              ),
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Contacts(),
                ),
              ),
              leading: const Icon(Icons.perm_contact_calendar_sharp),
              title: const Text('Contacts'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Details(),
                ),
              ),
              leading: const Icon(Icons.details),
              title: const Text('Details'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pop(),
              leading: const Icon(Icons.close),
              title: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
