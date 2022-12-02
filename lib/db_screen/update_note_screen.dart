import 'package:flutter/material.dart';
import 'package:whats_app/db_screen/db_nots.dart';

class UpdateNoteScreen extends StatefulWidget {
  var id;
  var note;

   UpdateNoteScreen(this.id, this.note,{Key? key}) : super(key: key);

  @override
  State<UpdateNoteScreen> createState() => _UpdateNoteScreenState(id,note);
}

class _UpdateNoteScreenState extends State<UpdateNoteScreen> {

  var id;
  var note;


  _UpdateNoteScreenState(this.id, this.note);

  DBNots _dbNots=DBNots();
  TextEditingController noteTextEditingController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        style: const TextStyle(fontSize: 30),
        controller: noteTextEditingController,
        keyboardType: TextInputType.multiline,
        maxLines: null,
      ),
      bottomNavigationBar: TextButton(
          onPressed: () async {
            await _dbNots.updateNote(id, noteTextEditingController.text);
            Navigator.pop(context, "Refresh");
          },
          child: const Text("Update")),
    );
  }
}
