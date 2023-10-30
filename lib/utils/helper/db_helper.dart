import 'package:flutter_github_repository_app/data/dto/model/saved_repository_dto.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_dto.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// ignore_for_file: non_constant_identifier_names
const String tableName = 'repository';

class DBHelper {
  DBHelper._();
  static final DBHelper _db = DBHelper._();
  factory DBHelper() => _db;

  static Database? _database;

  Future<Database> get database async {
    _database ??= await initDB();

    return _database!;
  }

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'repository.db');

    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE $tableName (
          id INTEGER PRIMARY KEY,
          html_url TEXT,
          login TEXT,
          avatar_url TEXT )
       ''');
      },
    );
  }

  // CREATE
  createData(SearchReposItemDto item) async {
    final db = await database;
    var res = await db.insert(tableName, SavedRepositoryDto.toJson(item));
    return res;
  }

  // COUNT
  Future<int?> getSavedRepositoryListCount() async {
    final db = await database;
    int? count = Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM $tableName'));
    return count;
  }

  // READ
  getSavedRepository(int id) async {
    final db = await database;
    var res = await db.query(tableName, where: 'id = ?', whereArgs: [id]);
    return res.isNotEmpty ? SavedRepositoryDto.fromJson(res.first) : Null;
  }

  // READ ALL DATA
  Future<List<SavedRepositoryDto>> getAllSavedRepositoryList() async {
    final db = await database;
    var res = await db.query(tableName, orderBy: 'id DESC');
    List<SavedRepositoryDto> list =
    res.isNotEmpty ? res.map((c) => SavedRepositoryDto.fromJson(c)).toList() : [];
    return list;
  }

  // READ LIMIT DATA
  Future<List<SavedRepositoryDto>> getLimitSavedRepositoryList(int startIndex, int count) async {
    final db = await database;
    var res = await db.rawQuery('SELECT * FROM $tableName LIMIT $startIndex, $count');
    List<SavedRepositoryDto> list =
    res.isNotEmpty ? res.map((c) => SavedRepositoryDto.fromJson(c)).toList() : [];
    return list;
  }

  // Update
  updateSavedRepositoryModel(int id, SearchReposItemDto item) async {
    final db = await database;
    var res = await db.update(tableName, SavedRepositoryDto.toJson(item),
        where: 'id = ?', whereArgs: [id]);
    return res;
  }

  // Delete
  deleteSavedRepositoryModel(int id) async {
    final db = await database;
    db.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  deleteAllSavedRepositoryList() async {
    final db = await database;
    db.rawDelete('DELETE FROM $tableName');
  }
}
