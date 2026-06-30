import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> userData = [
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
      {
        'userImage': 'profile.jpg',
        'userName': 'Coursera',
        'userLastMes': 'Turn a few hours into real....',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search in mail',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [CircleAvatar(), SizedBox(width: 20)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('All inboxes', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: userData.length,
                itemBuilder: (context, index) {
                  final data = userData[index];
                  return ListTile(
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/${data['userImage']}',
                      ),
                    ),
                    title: Text(
                      data['userName'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(data['userLastMes']),
                    trailing: Icon(Icons.star_border),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(children: [drawerMenu(context)]),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Compose'),
        icon: Icon(Icons.edit),
        backgroundColor: Colors.white,
      ),
    );
  }

  drawerMenu(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          Text(
            'Gmail',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Divider(height: 7),
          ListTile(
            leading: Icon(Icons.all_inbox_rounded),
            title: Text('All Inboxes'),
          ),
          Divider(height: 7),
          ListTile(leading: Icon(Icons.inbox_rounded), title: Text('Inbox')),
          ListTile(
            leading: Icon(Icons.mark_email_unread_outlined),
            title: Text('Unread'),
          ),
          Text('All labels', style: TextStyle(fontSize: 15)),
          ListTile(leading: Icon(Icons.star_border), title: Text('Starred')),
          ListTile(leading: Icon(Icons.schedule), title: Text('Snoozed')),
          ListTile(
            leading: Icon(Icons.label_important_outline),
            title: Text('Important'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text('Purchases'),
          ),
          ListTile(leading: Icon(Icons.send), title: Text('Sent')),
          ListTile(
            leading: Icon(Icons.schedule_send),
            title: Text('Scheduled'),
          ),
          ListTile(leading: Icon(Icons.outbox_outlined), title: Text('Outbox')),
          ListTile(leading: Icon(Icons.drafts_rounded), title: Text('Drafts')),
          ListTile(
            leading: Icon(Icons.all_inbox_rounded),
            title: Text('All mails'),
          ),
          ListTile(
            leading: Icon(Icons.error_outline_rounded),
            title: Text('Spam'),
          ),
          ListTile(
            leading: Icon(Icons.delete_outline_rounded),
            title: Text('Trash'),
          ),
          ListTile(
            leading: Icon(Icons.mail_lock_outlined),
            title: Text('Manage subscriptions'),
          ),
          ListTile(leading: Icon(Icons.add), title: Text('Create label')),
          ListTile(
            leading: Icon(Icons.note_add_outlined),
            title: Text('Notes'),
          ),
          Text('Google apps', style: TextStyle(fontSize: 15)),
          ListTile(
            leading: Icon(Icons.calendar_today_outlined),
            title: Text('Calender'),
          ),
          ListTile(
            leading: Icon(Icons.perm_contact_calendar_sharp),
            title: Text('Contacts'),
          ),
          Divider(height: 7),
          ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          ListTile(
            leading: Icon(Icons.help_outline_outlined),
            title: Text('Help & feedback'),
          ),
        ],
      ),
    );
  }
}
