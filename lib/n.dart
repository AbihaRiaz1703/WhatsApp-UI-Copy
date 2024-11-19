import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: false,
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(child: Text('Calls')),
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_horiz_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: 1, child: Text('New Group')),
                        PopupMenuItem(value: 2, child: Text('Settings')),
                        PopupMenuItem(value: 3, child: Text('Logout'))
                      ]),
            ],
          ),
          body: TabBarView(children: [
            Center(
              child: Container(
                height: 300,
                width: 300,
                color: Colors.teal,
                child: Center(
                  child: Icon(Icons.camera_alt_outlined,
                      size: 250, color: Colors.grey),
                ),
              ),
            ),
            ListView.builder(
                itemCount: 01,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://wallpapers.com/images/high/scary-profile-pictures-zsy29jumd1wx92jf.webp'),
                    ),
                    title: Text('Aatma'),
                    subtitle: Text('Give me your blood'),
                    trailing: Text('12:00 AM'),
                  );
                }),
            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 4,
                        ),
                      ),
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(index / 2 == 0
                              ? 'https://images.unsplash.com/photo-1499557354967-2b2d8910bcca?q=80&w=1336&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                              : 'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D')),
                    ),
                    title: Text(index / 2 == 0 ? 'BFF' : 'Momma'),
                    subtitle: Text(index / 2 == 0
                        ? 'Today at 2:33 PM'
                        : 'Today at 9:00 Am'),
                  );
                }),
            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://wallpapers.com/images/high/scary-profile-pictures-zsy29jumd1wx92jf.webp')),
                    title: Text('Aatma'),
                    subtitle: Text(index / 2 == 0
                        ? 'November 18, 12:01 AM'
                        : 'November 18 12:00 AM'),
                    trailing: Icon(index / 2 == 0
                        ? Icons.video_call_outlined
                        : Icons.phone),
                  );
                })
          ]),
        ));
  }
}
