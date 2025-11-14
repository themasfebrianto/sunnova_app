import 'package:sqflite/sqflite.dart';
import 'package:sunnova_app/core/utils/sqlite_db_context.dart';

/// Wrapper sederhana untuk operasi CRUD berbasis tabel SQLite.
class SQLiteTable {
  final String tableName;

  const SQLiteTable(this.tableName);

  Future<int> insert(
    Map<String, dynamic> data, {
    ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace,
  }) async {
    try {
      final db = await SQLiteDbContext.database;
      return await db.insert(
        tableName,
        data,
        conflictAlgorithm: conflictAlgorithm,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> findAll({
    String? orderBy,
    int? limit,
    int? offset,
    String? where,
    List<Object?>? whereArgs,
  }) async {
    try {
      final db = await SQLiteDbContext.database;
      return await db.query(
        tableName,
        orderBy: orderBy,
        limit: limit,
        offset: offset,
        where: where,
        whereArgs: whereArgs,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>?> findOne({
    required String where,
    required List<Object?> whereArgs,
  }) async {
    final result = await findAll(where: where, whereArgs: whereArgs, limit: 1);
    return result.isNotEmpty ? result.first : null;
  }

  Future<int> update(
    Map<String, dynamic> data, {
    required String where,
    required List<Object?> whereArgs,
  }) async {
    try {
      final db = await SQLiteDbContext.database;
      return await db.update(
        tableName,
        data,
        where: where,
        whereArgs: whereArgs,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<int> delete({
    required String where,
    required List<Object?> whereArgs,
  }) async {
    try {
      final db = await SQLiteDbContext.database;
      return await db.delete(tableName, where: where, whereArgs: whereArgs);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> clear() async {
    try {
      final db = await SQLiteDbContext.database;
      await db.delete(tableName);
    } catch (e) {
      rethrow;
    }
  }
}
