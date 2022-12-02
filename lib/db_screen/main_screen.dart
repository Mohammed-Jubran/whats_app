import 'package:flutter/material.dart';
import 'package:whats_app/db_screen/add_not.dart';
import 'package:whats_app/db_screen/db_nots.dart';
import 'package:whats_app/db_screen/update_note_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  DBNots _dbNots = DBNots();
  List<Map> list = [];

  @override
  void initState() {
    super.initState();
    getAllNotes();
  }

  getAllNotes() {
    _dbNots.getNote().then(
      (value) {
        list = value;
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(
                  list[index]['note'],
                  style: const TextStyle(fontSize: 30),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () async {
                          final res = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UpdateNoteScreen(
                                    list[index]['id'], list[index]['note'])),
                          );
                          getAllNotes();
                        },
                        icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () async {
                          await _dbNots.deleteNote(list[index]['id']);
                          getAllNotes();
                        },
                        icon: const Icon(Icons.delete))
                  ],
                ),
              ],
            );
          },
          itemCount: list.length),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final res = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddNoteScreen()),
            );
              getAllNotes();
          },
          child: const Icon(Icons.add)),
    );
  }
}
