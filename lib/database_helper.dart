import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';


class DatabaseHelper{

  Database _db;


  static final _databaseName = 'login.db';
  static final _databaseVersion = 1;
  static final table = 'Demo';
  static final columnEmail = 'Email';
  static final columnName = 'Name';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static final _database;
  Future <Database> get database async{

  }

}