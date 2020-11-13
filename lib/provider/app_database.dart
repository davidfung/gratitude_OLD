// Database Schema Map
// The key of the map represents the version of the database.
// TODO only support one sql statement in each version?
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Map<int, String> migrationScripts = {
  1: '''
  CREATE TABLE gratitude (
    id INTEGER PRIMARY KEY, 
    cdate DATE, 
    content TEXT, 
    icon INTEGER
    )
  ''',
};

Database _db;
const DB_NAME = "gratitude.db";

Future<void> initDatabase() async {
  int count = migrationScripts.length;
  _db = await openDatabase(
    join(await getDatabasesPath(), DB_NAME),
    version: count,
    // if the database does not exist, onCreate executes all sql statements
    // in the "migrationScripts" map one by one in ascending order.
    onCreate: (Database db, int version) async {
      print("sqflite onCreate version $version");
      for (int i = 1; i <= count; i++) {
        await db.execute(migrationScripts[i]);
      }
    },
    // if the database exists but the version of the database is different
    // from the version defined in parameter, onUpgrade will execute all sql
    // statements greater than the old version.
    onUpgrade: (db, oldVersion, newVersion) async {
      print("sqflite onUpgrade version "
          "$oldVersion -> $newVersion");
      for (int i = oldVersion + 1; i <= newVersion; i++) {
        await db.execute(migrationScripts[i]);
      }
    },
  );
}
