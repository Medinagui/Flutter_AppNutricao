import 'package:appnutricao/components/classes/alimento.dart';
import 'package:sqflite/sqflite.dart';

class AlimentosDatabase {
  static final AlimentosDatabase instance = AlimentosDatabase._init();

  static Database? _database;

  AlimentosDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('alimentos.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    return await openDatabase(filePath, version: 1, onCreate: _createDB);
  }

  Future<Database> _createDB(Database db, int version) async {

    const String idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const String textType = 'TEXT NOT NULL';
    const String imageType = 'IMAGE NOT NULL';

    await db.execute('''
CREATE TABLE $tableAlimentos
(
  ${AlimentosFields.id} $idType,
  ${AlimentosFields.nome} $textType,
  ${AlimentosFields.foto} $imageType,
  ${AlimentosFields.categoria} $textType,
  ${AlimentosFields.tipo} $textType,
)
''');
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
