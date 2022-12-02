import 'package:flutter/material.dart';
import 'package:whats_app/db_screen/db_nots.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({Key? key}) : super(key: key);

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {

  DBNots _dbNots= DBNots();
  TextEditingController noteTextEditingController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  TextField(
        style: const TextStyle(fontSize: 30),
        controller: noteTextEditingController ,
        keyboardType: TextInputType.multiline,
        maxLines: null,
      ),
      bottomNavigationBar: TextButton(
        onPressed: () async {
          await _dbNots.insertNote(noteTextEditingController.text);
          Navigator.pop(context, "Refresh");
        },
        child: const Text("Save"),
      ),
    );
  }
}
