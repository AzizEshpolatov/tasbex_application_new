import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tasbex_app/data/model/constants.dart';
import 'package:tasbex_app/data/model/zikr_model.dart';

class LocalDatabase {
  static final LocalDatabase _instance = LocalDatabase._();

  LocalDatabase._();

  factory LocalDatabase() => _instance;

  late Database _database;

  Future<void> initializeDatabase() async {
    String path = await getDatabasesPath();
    _database = await openDatabase(
      join(path, 'zikr.db'),
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    const idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
    const textType = "TEXT NOT NULL";
    const intType = "INTEGER DEFAULT 0";

    await db.execute('''CREATE TABLE ${ZikrModelConstants.tableName} (
      ${ZikrModelConstants.id} $idType,
      ${ZikrModelConstants.name} $textType,
      ${ZikrModelConstants.count} $intType
    )''');
  }

  Future<ZikrModel> insertZikr(ZikrModel zikrModel) async {
    int savedTaskID = await _database.insert(
      ZikrModelConstants.tableName,
      zikrModel.toJson(),
    );
    return zikrModel.copyWith(id: savedTaskID);
  }

  Future<List<ZikrModel>> getAllZikr() async {
    List<Map<String, dynamic>> json = await _database.query(
      ZikrModelConstants.tableName,
      orderBy: "${ZikrModelConstants.id} DESC",
    );
    return json.map((e) => ZikrModel.fromJson(e)).toList();
  }

  Future<int> deleteZikr(int id) async {
    int deletedId = await _database.delete(
      ZikrModelConstants.tableName,
      where: "${ZikrModelConstants.id} = ?",
      whereArgs: [id],
    );
    return deletedId;
  }
}
