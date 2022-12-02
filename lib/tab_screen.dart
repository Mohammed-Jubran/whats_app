import 'package:flutter/material.dart';
import 'package:whats_app/login_screen.dart';
import 'call_screen.dart';
import 'db_screen/add_not.dart';
import 'db_screen/main_screen.dart';
import 'status_screen.dart';
import 'list_view_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const MyLogin(),
                  ));
                },
                icon: const Icon(Icons.logout)),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "chats",
              ),
              Tab(
                text: "calls",
              ),
              Tab(
                text: "Status",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [ListViewScreen(), MainScreen(), StatusScreen()],
        ),
      ),
    );
  }
}
