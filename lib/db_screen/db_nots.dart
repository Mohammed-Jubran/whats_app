import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBNots {

  late Database database;

  openDb() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'note.db');
    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Notes (id INTEGER PRIMARY KEY AUTOINCREMENT, note TEXT)');
    });
  }

  insertNote(var note) async {
    await  openDb();
    await database.rawInsert("Insert into Notes (note) VALUES ('$note')");
  }

  deleteNote(var id) async {
    await openDb();
    await database.rawDelete("DELETE FROM Notes where id = '$id'");
  }

  updateNote (var id,var note) async {
    await openDb();
    await database.rawUpdate("update Notes set note = '$note' where id = '$id'");
  }

  Future<List<Map>> getNote() async {
    await openDb();
    List<Map> list= await database.rawQuery("Select * from Notes");
    return list;
  }


}
